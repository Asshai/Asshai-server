from django.contrib import admin

from . import models


@admin.register(models.Group)
class GroupAdmin(admin.ModelAdmin):
    list_display = ('douban_id', 'name', 'crawl_count')


@admin.register(models.Location)
class LocationAdmin(admin.ModelAdmin):
    list_display = ('id', 'name', 'latitude', 'longitude')


@admin.register(models.Topic)
class TopicAdmin(admin.ModelAdmin):
    list_display = ('douban_id', 'title', 'author_name', 'create_time')
    list_filter = ('create_time', 'update_time')
