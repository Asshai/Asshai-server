# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models
from django.db import connection
from django.db.models import Q
from django.core.cache import cache
import json
import urllib2
from PIL import Image, ImageDraw, ImageFont
import base64
import cStringIO
from math import radians, cos, sin, asin, sqrt

from util.const import DEFAULT_COVER, CACHE_TIME

class Location(models.Model):

    name = models.CharField(max_length=200, unique=True)
    longitude = models.FloatField()
    latitude = models.FloatField()
    topics_count = models.IntegerField(default=0)
    address = models.TextField(null=True)

    distance = 0

    KEY_TOPICS_COUNT = '[topics_count%s]'
    KEY_COVER = '[cover%s]'

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
        cache.set(self.KEY_TOPICS_COUNT % self.id, str(cnt), CACHE_TIME)
        return cnt

    @property
    def marker_icon(self):
        main_color = "#42bd56"
        text = u"%s %s条" % (self.name, self.topics)
        fnt = ImageFont.truetype('Songti.ttc', 14, encoding='utf-8')
        padding = 4
        r = 6

        dummy = Image.new("RGBA", (1000, 1000), (0, 0, 0, 0))
        s = ImageDraw.Draw(dummy).textsize(text, fnt)

        w = s[0] + padding * 2
        h = s[1] + padding * 2
        im = Image.new("RGBA", (w, h + r), (0, 0, 0, 0))

        draw = ImageDraw.Draw(im)
        draw.rectangle([0, 0, w, h], main_color, main_color)
        draw.polygon([(w / 2 - r, h), (w / 2, h + r), (w / 2 + r, h)], fill=main_color)
        draw.text((padding, padding), text, font=fnt, fill=(255, 255, 255, 128))
        buffer = cStringIO.StringIO()
        im.save(buffer, format='PNG')
        return base64.b64encode(buffer.getvalue())

    def calc_distance(self, lon, lan):
        """
        Calculate the great circle distance between two points
        on the earth (specified in decimal degrees)
        """
        # 将十进制度数转化为弧度
        lon1, lat1, lon2, lat2 = map(radians, [float(lon), float(lan),
                                               float(self.longitude), float(self.latitude)])
        # haversine公式
        dlon = lon2 - lon1
        dlat = lat2 - lat1
        a = sin(dlat/2)**2 + cos(lat1) * cos(lat2) * sin(dlon/2)**2
        c = 2 * asin(sqrt(a))
        r = 6371 # 地球平均半径，单位为公里
        return c * r * 1000

    @property
    def cover(self):
        citem = cache.get(self.KEY_COVER % self.id)
        if citem:
            return citem
        first = Topic.objects.filter(Q(title__contains=self.name) | Q(content__contains=self.name)).exclude(photos__exact='').order_by('create_time').reverse().first()
        cover = DEFAULT_COVER
        if first:
            cover = first.cover
        cache.set(self.KEY_COVER % self.id, cover, CACHE_TIME)
        return cover


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

    def __unicode__(self):
        return self.title

    @property
    def cover(self):
        if not self.photos:
            return DEFAULT_COVER
        ps = json.loads(self.photos)
        if isinstance(ps, list) and len(ps) > 0:
            return ps[0]
        else:
            return DEFAULT_COVER

    @property
    def photo_list(self):
        opener = urllib2.build_opener()
        opener.addheaders = [('User-Agent', 'Rexxar-Core/0.1.3 com.douban.frodo/4.9.0')]
        res = opener.open("https://frodo.douban.com/api/v2/group/topic/%s?" % self.douban_id)
        raw = res.read()
        model = json.loads(raw)
        return model['photos']
