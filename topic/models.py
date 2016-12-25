# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models
from django.db import connection
from django.db.models import Q
from django.core.cache import cache
import json
import urllib2


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
        if not self.photos:
            return self.DEFAULT_COVER
        ps = json.loads(self.photos)
        if isinstance(ps, list) and len(ps) > 0:
            return ps[0]
        else:
            return self.DEFAULT_COVER

    @property
    def photo_list(self):
        opener = urllib2.build_opener()
        opener.addheaders = [('User-Agent', 'Rexxar-Core/0.1.3 com.douban.frodo/4.9.0')]
        res = opener.open("https://frodo.douban.com/api/v2/group/topic/%s?" % self.douban_id)
        raw = res.read()
        model = json.loads(raw)
        return model['photos']
