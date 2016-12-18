from scrapy.crawler import CrawlerProcess
from crawl.spiders.topic_spider import TopicSpider


def scheduled_crawl_group_topics():
    process = CrawlerProcess()
    process.crawl(TopicSpider)
    process.start()
    # the script will block here until the crawling is finished
