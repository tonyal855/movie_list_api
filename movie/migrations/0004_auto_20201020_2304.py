# Generated by Django 3.1.2 on 2020-10-20 16:04

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('movie', '0003_auto_20201020_2245'),
    ]

    operations = [
        migrations.RenameField(
            model_name='activitylog',
            old_name='username',
            new_name='user',
        ),
    ]
