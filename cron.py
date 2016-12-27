# -*- coding: utf-8 -*-
from scrapy.crawler import CrawlerProcess
from crawl.spiders.topic_spider import TopicSpider
from topic import models
import json
from django.db.models import Q
import urllib2


def scheduled_crawl_group_topics():
    process = CrawlerProcess()
    process.crawl(TopicSpider)
    process.start()
    # the script will block here until the crawling is finished

def parse_locations(file_path):
    '''
    ./data/location.json
    '''
    with open(file_path, 'r') as f:
        raw = f.read()
        locations = json.loads(raw)
        if locations and isinstance(locations, list):
            for i in locations:
                item = models.Location()
                item.name = i['name']
                item.latitude = i['lat']
                item.longitude = i['lon']
                try:
                    item.save()
                    print 'Success saved [%s]' % item.name
                except:
                    print 'Skip: %s' % item.name

def loc():
    for l in models.Location.objects.all():
        q = models.Topic.objects.filter(Q(title__contains=l.name) | Q(content__contains=l.name))
        for t in q:
            t.location = l
            t.save()

def address():
    url = 'http://api.map.baidu.com/geocoder/v2/?location=%s,%s&output=json&pois=1&ak=72484b4d43aefbe834dca2bf24dec3db'
    for l in models.Location.objects.all():
        res = urllib2.urlopen(url % (l.latitude, l.longitude))
        raw = json.loads(res.read())
        if raw['result']:
            l.address = raw['result']['formatted_address']
            print "%s : %s" % (l.name, l.address)
            l.save()

