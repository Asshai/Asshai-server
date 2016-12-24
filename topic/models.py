# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models
from django.db import connection
from django.db.models import Q
from django.core.cache import cache
import json


class Location(models.Model):

    name = models.CharField(max_length=200)
    longitude = models.FloatField()
    latitude = models.FloatField()
    topics_count = models.IntegerField(default=0)

    KEY_TOPICS_COUNT = '[topics_count%s]'

    def __unicode__(self):
        return self.name

    @property
    def topics(self):
        citem = cache.get(self.KEY_TOPICS_COUNT % self.id)
        if citem:
            return int(citem)
        like = '%' + self.name + '%'
        cnt = 0
        with connection.cursor() as cursor:
            cursor.execute('select COUNT(DISTINCT title) from topic_topic where title like %s or content like %s', [like, like])
            cnt = cursor.fetchone()[0]
        cache.set(self.KEY_TOPICS_COUNT % self.id, str(cnt), 60 * 10)
        return cnt
        # return Topic.objects.filter(Q(title__contains=self.name) | Q(content__contains=self.name)).count()


class Group(models.Model):

    douban_id = models.CharField(max_length=20, primary_key=True)
    name = models.CharField(max_length=200)
    crawl_count = models.IntegerField(default=30)

    def __unicode__(self):
        return self.name


class Topic(models.Model):

    douban_id = models.CharField(max_length=20, primary_key=True)
    group_id = models.CharField(max_length=20)
    title = models.CharField(max_length=255, db_index=True)
    url = models.CharField(max_length=100, db_index=True)
    create_time = models.DateTimeField(db_index=True)
    update_time = models.DateTimeField(db_index=True)
    content = models.TextField()

    # simple flat author
    author_name = models.CharField(max_length=100)
    author_avatar = models.CharField(max_length=200)
    author_url = models.CharField(max_length=100)

    photos = models.TextField()
    location = models.ForeignKey('Location', null=True, on_delete=models.SET_NULL)

    DEFAULT_COVER = "http://myapartmentbelgrade.com/upload/10-default-6-.jpg"

    def __unicode__(self):
        return self.title

    @property
    def cover(self):
        if self.photo_list and len(self.photo_list) > 0:
            return self.photo_list[0]
        return self.DEFAULT_COVER

    @property
    def photo_list(self):
        if self.photos:
            return json.loads(self.photos)
        return None
