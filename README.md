Movie List with Django

FLow GET TOKEN API https://developers.themoviedb.org/
- Register https://www.themoviedb.org/signup
- Setting > API > Create > Get API Key
- Get movie popular: https://api.themoviedb.org/3/movie/popular?page=1&api_key=<<token>> 
- Get Detail Movie: https://api.themoviedb.org/3/movie/<<id_movie>>?api_key=<<token>>

Features/Service:
- Web app integrate with API https://developers.themoviedb.org/ to get list movie using token 
- List Movie by Popular and Top Rated with Pagination
- Add to favorite movie
- Edit your note 
- Delete favorite movie
- Login
- Register
- User List (Only Super User)
- Activity User Log (Only Super User)


Install Reqiurement

`````$ pip install -r reqiurement.txt`````


Setup database using Mysql
```
DATABASES = {
    'default': {
        'ENGINE': 'django.db.backends.mysql',
        'NAME': 'movie_list',
        'USER': 'root',
        'PASSWORD': '',
        'HOST': 'LOCALHOST',
        'PORT': '3306'
    }
}
```
Before run we must Migrate database

```$ python manage.py makemigrations```

```$ python manage.py migrate```


Running web app

`````$ python manage.py runserver`````




