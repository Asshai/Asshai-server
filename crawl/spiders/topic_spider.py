# -*- coding: utf-8 -*-
import scrapy
import json
import urllib

from crawl.items import TopicItem
from topic.models import Group, Topic


FRODO_HEADERS = {'User-Agent': 'Rexxar-Core/0.1.3 com.douban.frodo/4.9.0'}


class TopicSpider(scrapy.Spider):
    name = 'douban_topics'

    URL_GROUP_TOPIC_LIST = 'https://frodo.douban.com/api/v2/group/%s/topics?'
    URL_TOPIC_DETAIL = 'https://frodo.douban.com/api/v2/group/topic/%s?'

    def start_requests(self):
        all_groups = Group.objects.all()
        for group in all_groups:
            yield self.get_group_topic_list(group.douban_id, 0, 60)

    def get_group_topic_list(self, group_id, start=0, count=30):
        query = {'start': start, 'count': count}
        req = scrapy.Request(url=self.URL_GROUP_TOPIC_LIST % group_id + urllib.urlencode(query),
                             headers=FRODO_HEADERS,
                             callback=self.parse_topics_list,
                             meta={'group_id': group_id}
                             )
        return req

    def parse_topics_list(self, response):
        data = json.loads(response.body)
        if data['topics'] and isinstance(data['topics'], list):
            for topic in data['topics']:
                if Topic.objects.filter(douban_id=topic['id']).exists():
                    print '[Skip]', topic['title']
                else:
                    yield self.get_topic_detail(response.meta['group_id'], topic['id'])

    def get_topic_detail(self, group_id, topic_id):
        req = scrapy.Request(url=self.URL_TOPIC_DETAIL % topic_id,
                             headers=FRODO_HEADERS,
                             callback=self.parse_topic_detail,
                             meta={'group_id': group_id},
                             )
        return req

    def parse_topic_detail(self, response):
        data = json.loads(response.body)
        if not data:
            return
        item = TopicItem()
        item['group_id'] = response.meta['group_id']
        item['douban_id'] = data['id']
        item['title'] = data['title']
        item['url'] = data['sharing_url']
        item['create_time'] = data['create_time']
        item['update_time'] = data['update_time']
        item['content'] = data['content']

        if data['author']:
            item['author_name'] = data['author']['name']
            item['author_avatar'] = data['author']['avatar']
            item['author_url'] = data['author']['url']
        if isinstance(data['photos'], list) and len(data['photos']) > 0:
            temp = [i['alt'] for i in data['photos']]
            item['photos'] = json.dumps(temp)
        yield item

