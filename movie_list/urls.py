"""movie_list URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/3.1/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  path('', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  path('', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.urls import include, path
    2. Add a URL to urlpatterns:  path('blog/', include('blog.urls'))
"""
from django.contrib import admin
from django.urls import path, include
from movie import views

urlpatterns = [
    path('admin/', admin.site.urls),
    path('', views.list_popular),
    path('top_rated', views.top_rated),
    path('detail_movie/<int:id>', views.detail_movie),
    path('add_movie', views.add_movie),
    path('my_fav_movie', views.my_fav_movie),
    path('delete_movie/<int:id_movie>', views.delete_movie),
    path('accounts/', include('django.contrib.auth.urls')),
    path('accounts/register', views.register),
    path('accounts/managemen_user', views.mngmt_user),
    path('activity_log', views.activity_log),
]
