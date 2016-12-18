from scrapy.crawler import CrawlerProcess
from crawl.spiders.topic_spider import TopicSpider
from topic import models
import json


def scheduled_crawl_group_topics():
    process = CrawlerProcess()
    process.crawl(TopicSpider)
    process.start()
    # the script will block here until the crawling is finished

def parse_locations(file_path):
    '''
    从数据文件中读取小区信息并存到数据库中
    实例文件：
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
                item.save()
                print 'Success saved [%s]' % item.name

