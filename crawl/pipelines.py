# -*- coding: utf-8 -*-

# Define your item pipelines here
#
# Don't forget to add your pipeline to the ITEM_PIPELINES setting
# See: http://doc.scrapy.org/en/latest/topics/item-pipeline.html

from scrapy.exceptions import DropItem
from crawl.items import TopicItem
import sys
reload(sys)
sys.setdefaultencoding( "utf-8" )


class TopicPipeline(object):

    def process_item(self, item, spider):
        if item and isinstance(item, TopicItem):
            item.save()
            print 'success save %s' % item['title']
            return item
        else:
            raise DropItem('Error topic item')
