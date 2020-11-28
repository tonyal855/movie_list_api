from django.db import models
from django.conf import settings

class FavMovie(models.Model):
    id_movie = models.IntegerField(default=0)
    title = models.CharField(max_length=50)
    orginal_title = models.CharField(max_length=50, null=True, blank=True)
    overview = models.TextField(max_length=800, default='None')
    tagline = models.CharField(max_length=100, null=True, blank=True)
    vote_average = models.FloatField (max_length=35, default=0)
    release_date = models.DateField(blank=True, null=True)
    genres = models.CharField(max_length=35, default='None')
    original_language = models.CharField(max_length=10, null=True, blank=True)
    poster_path = models.CharField(max_length=100, null=True, blank=True)
    homepage = models.CharField(max_length=100, null=True, blank=True)
    popularity = models.FloatField(max_length=20, null=True, blank=True)
    note = models.CharField(max_length=50, default='this one of my favorite movie', null=True, blank=True)
    id_user = models.IntegerField(null=True, blank=True)
    created_at = models.DateTimeField(auto_now_add=True, null=True)
    updated_at = models.DateTimeField(auto_now=True, null=True)

    class Meta:
        db_table = "fav_movie"

class ActivityLog(models.Model):
    user = models.ForeignKey(settings.AUTH_USER_MODEL, on_delete=models.CASCADE, null=True)
    action_time = models.DateTimeField(auto_now_add=True, null=True)
    content_type = models.CharField(max_length=70)
    action_flag = models.CharField(max_length=70)

    class Meta:
        db_table = "activity_log"



