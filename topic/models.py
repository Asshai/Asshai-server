from __future__ import unicode_literals

from django.db import models

# Create your models here.


class Location(models.Model):

    name = models.CharField(max_length=200)
    longitude = models.FloatField()
    latitude = models.FloatField()
    topics_count = models.IntegerField(default=0)

    def __unicode__(self):
        return self.name


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

    location = models.ForeignKey('Location', null=True, on_delete=models.SET_NULL)

    def __unicode__(self):
        return self.title
