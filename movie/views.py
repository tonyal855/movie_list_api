from django.shortcuts import render,redirect  
from django.conf import settings
from django.contrib.auth.decorators import login_required
from django.contrib.auth import login, authenticate
from django.contrib.auth.forms import UserCreationForm
from django.contrib.auth.models import User
from django.contrib import messages
from django.http import JsonResponse
from movie.forms import FavMovieForm, ActivityLogForm
from movie.models import FavMovie, ActivityLog
import requests

content = {
    "movie": "favourite_movie"
}

flag_movie = {
    "get": "get_detail",
    "get_fav_movie": "get_favourite_movie",
    "get_popular": "get_popular_movie",
    "get_top_rate": "get_top_rate_movie",
    "add": "add_fav_movie",
    "update": "update_note",
    "delete": "delete_fav_movie"
}

def list_popular(request):
    token = settings.TOKEN_MOVIE
    if request.GET.get('page', False):
        page = request.GET.get('page', False)
    else:
        page = 1
    endpoint = 'https://api.themoviedb.org/3/movie/popular'
    data = {
        'language': 'en-US',
        'page': page,
        'api_key': token
    }
    res = requests.get(endpoint, params=data).json()

    ##logActivity
    if request.user.is_authenticated:
        id_user = request.user.id
    else:
        id_user = None
    content_type = content.get('movie')
    action_flag = flag_movie.get('get_popular')
    log = ActivityLog(user_id=id_user, content_type=content_type, action_flag=action_flag)
    log.save()

    return render(request,'index.html',{'data':res})

def top_rated(request):
    token = settings.TOKEN_MOVIE
    if request.GET.get('page', False):
        page = request.GET.get('page', False)
    else:
        page = 1
    endpoint = 'https://api.themoviedb.org/3/movie/top_rated'
    data = {
        'language': 'en-US',
        'page': page,
        'api_key': token
    }
    res = requests.get(endpoint, params=data).json()

    ##logActivity
    if request.user.is_authenticated:
        id_user = request.user.id
    else:
        id_user = None
    content_type = content.get('movie')
    action_flag = flag_movie.get('get_top_rate')
    log = ActivityLog(user_id=id_user, content_type=content_type, action_flag=action_flag)
    log.save()

    return render(request,'top_rate.html',{'data':res})

def detail_movie(request, id):
    token = settings.TOKEN_MOVIE
    endpoint = 'https://api.themoviedb.org/3/movie/{}'.format(id)
    data = {
        'api_key': token
    }
    res = requests.get(endpoint, params=data).json()
    genre = ",".join(i['name'] for i in res['genres'])
    res['genres'] = genre


    ##logActivity
    if request.user.is_authenticated:
        id_user = request.user.id
    else:
        id_user = None
    content_type = content.get('movie')
    action_flag = flag_movie.get('get')
    log = ActivityLog(user_id=id_user, content_type=content_type, action_flag=action_flag)
    log.save()

    return render(request,'detail.html',{'movie':res})

@login_required
def add_movie(request):
    if request.method == 'POST':
        form = FavMovieForm(request.POST)
        id_movie = request.POST['id_movie']
        # print(form.errors.as_data())
        try:
            id_user = request.user.id
            dupl_mov = FavMovie.objects.get(id_movie=id_movie, id_user=id_user)
            print("movie available in fav movie")
            messages.add_message(request, messages.ERROR, 'Movie Available in Your Favourite Movie')
            return redirect('/')
        except FavMovie.DoesNotExist:
            if form.is_valid():
                form.save()
                messages.add_message(request, messages.SUCCESS, 'Movie Added')

                ##logActivity
                id_user = request.user.id
                content_type = content.get('movie')
                action_flag = flag_movie.get('add')
                log = ActivityLog(user_id=id_user, content_type=content_type, action_flag=action_flag)
                log.save()
                return redirect('/')
    else:
        return  redirect('/')



@login_required
def my_fav_movie(request):
    if request.method == 'POST':
        id = request.POST['id']
        note = request.POST['note']
        movie = FavMovie.objects.get(id=id)
        if movie:
            movie.note = note
            movie.save()

            ##logActivity
            id_user = request.user.id
            content_type = content.get('movie')
            action_flag = flag_movie.get('update')
            log = ActivityLog(user_id=id_user, content_type=content_type, action_flag=action_flag)
            log.save()

            return redirect('/my_fav_movie')
    else:
        id_user = request.user.id
        movies = FavMovie.objects.all().filter(id_user=id_user)

        ##logActivity
        id_user = request.user.id
        content_type = content.get('movie')
        action_flag = flag_movie.get('get_fav_movie')
        log = ActivityLog(user_id=id_user, content_type=content_type, action_flag=action_flag)
        log.save()

        return render(request,"my_movie.html",{'movies':movies})


@login_required
def delete_movie(request,id_movie):
    movie = FavMovie.objects.get(id_movie=id_movie)
    movie.delete()

    ##logActivity
    id_user = request.user.id
    content_type = content.get('movie')
    action_flag = flag_movie.get('delete')
    log = ActivityLog(user_id=id_user, content_type=content_type, action_flag=action_flag)
    log.save()
    return redirect('/my_fav_movie')

def register(request):
    if request.method == 'GET':
        return render(request, 'registration/register.html')
    else:
        form = UserCreationForm(request.POST)
        # print(form.errors.as_data())
        if form.is_valid():
            form.save()
            username = form.cleaned_data.get('username')
            password = form.cleaned_data.get('password1')
            user = authenticate(username=username, password=password)
            login(request, user)
            return redirect('/')
    return render(request, 'registration/register.html', {'form':form})

@login_required
def mngmt_user(request):
    if request.user.is_superuser:
        users = User.objects.all()
        return render(request, 'usr_list.html', {'users': users})
    else:
        return redirect('/')

def activity_log(request):
    activity_logs = ActivityLog.objects.select_related('user').order_by('-action_time')[:15]

    return render(request, 'activity_logs.html', {'logs': activity_logs })

