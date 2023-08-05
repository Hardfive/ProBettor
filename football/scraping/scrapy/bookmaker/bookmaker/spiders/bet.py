import scrapy
import asyncio
from scrapy_playwright.page import PageMethod


class BetSpider(scrapy.Spider):
    name = 'bet'
    allowed_domains = ['1xbet.ci', 'betmomo.com', 'betclic.com']
    start_urls = ['http://1xbet.ci/', 'https://betmomo.com/',
                  'https://betclic.com/']

    def start_requests(self):
        yield scrapy.Request(self.url, callback=self.parse,
                             meta={"Playwright": True,
                                   "dont_redirect": True,
                                   "playwright_include_page": True},
                             errback=self.errback_close_page)

    def parse(self, response):
        pass
