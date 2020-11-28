from django.forms import ModelForm
from movie.models import FavMovie, ActivityLog



class FavMovieForm(ModelForm):
    class Meta:
        model = FavMovie
        fields = "__all__"

class ActivityLogForm(ModelForm):
    class Meta:
        model = ActivityLog
        fields = "__all__"