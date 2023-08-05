import scrapy
import asyncio
from scrapy_playwright.page import PageMethod
from football.items import SummaryItem, StatistiqueItem, HeadtoheadItem


class FlashscoreSpider(scrapy.Spider):
    name = 'flashscore'

    event_xp = '//div[contains(@class, "event__match event__match--static \
event__match")]'
    round_xp = '//span[@class="tournamentHeader__country"]/a/text()'
    time_xp = '//div[@class="duelParticipant__startTime"]/div/text()'
    home_xp = '//div[contains(@class, "duelParticipant__home")]//\
a[@class="participant__participantName participant__overflow "]/text()'
    away_xp = '//div[contains(@class, "duelParticipant__away")]//\
a[@class="participant__participantName participant__overflow "]/text()'
    first_half_home_score_xp = '(//div[@class="smv__incidentsHeader section__\
title"]/div[2])[1]/text()[1]'
    first_half_away_score_xp = '(//div[@class="smv__incidentsHeader section__\
title"]/div[2])[1]/text()[3]'
    home_score_xp = '//div[@class="detailScore__wrapper"]/span[1]/text()'
    away_score_xp = '//div[@class="detailScore__wrapper"]/span[3]/text()'
    home_goal_xp = '//div[@class="smv__participantRow smv__homeParticipant"]\
//div[contains(@title, "C''est le but") or contains(@title, "But !") or \
contains(@title, "du but") or contains(@title, "au but")\
or contains(@title, "finition") or contains(@title, "Quel beau moment")]'
    away_goal_xp = '//div[@class="smv__participantRow smv__awayParticipant"]\
//div[contains(@title, "C''est le but") or contains(@title, "But !") or \
contains(@title, "du but") or contains(@title, "au but")\
or contains(@title, "finition") or contains(@title, "Quel beau moment")]'
    shoot_xp = '//div[@class="stat__row"]//div[contains(text(),\
"Tirs au but")]'
    accurate_shoot_xp = '//div[@class="stat__row"]//div[contains(text(),\
"Tirs cadrés")]'
    corner_xp = '//div[@class="stat__row"]//div[contains(text(),\
"Corners")]'
    yellow_card_xp = '//div[@class="stat__row"]//div[contains(text(),\
"Cartons Jaunes")]'
    event_h2h_xp = '//div[@class="h2h__section section "][2]\
//div[@class="h2h__row"]'
    date_h2h_xp = './/span[@class="h2h__date"]'
    home_h2h_xp = './/span[@class="h2h__homeParticipant h2h__participant "]/\
span/text()'
    away_h2h_xp = './/span[@class="h2h__awayParticipant h2h__participant "]/\
span/text()'
    score_h2h_xp = './/span[@class="h2h__result"]'

    def __init__(self, url="https://www.flashscore.fr/football/espagne/laliga-2022-2023/resultats/", lig_id="liga"):
        self.url = url
        self.lig_id = lig_id
        self.start_urls = [self.url]

    def start_requests(self):
        yield scrapy.Request(self.url, callback=self.parse,
                             meta={"Playwright": True,
                                   "dont_redirect": True,
                                   "playwright_include_page": True},
                             errback=self.errback_close_page)

    async def parse(self, response):
        page = response.Request.meta["playwright_page"]
        title = await page.title()
        await page.close()
        item = SummaryItem()
        for event in response.xpath(self.event_xp):
            item['journée'] = event.xpath('//div[@class="event__round event__round--static"]').get()
            yield item
        return {"title": title}
        """yield scrapy.Request(f"https://www.flashscore.fr/match\
/{response.attrib['id']}/#/resume-du-match/resume-du-match",
                                 self.parse_summary)
            yield scrapy.Request(f"https://www.flashscore.fr/match\
/{response.attrib['id']}/#/resume-du-match/statistiques-du-match/0",
                                 self.parse_statistique)
            yield scrapy.Request(f"https://www.flashscore.fr/match\
/{response.attrib['id']}/#/resume-du-match/statistiques-du-match/1",
                                 self.parse_statistique_1)
            yield scrapy.Request(f"https://www.flashscore.fr/match\
/{response.attrib['id']}/#/tete-a-tete/home", self.parse_head_to_head)"""

    def parse_summary(self, response):
        item = SummaryItem.Item()
        item['journée'] = response.xpath(FlashscoreSpider.round_xp).get()
        item['date_time'] = response.xpath(FlashscoreSpider.time_xp).get()
        item['home_team'] = response.xpath(FlashscoreSpider.home_xp).get()
        item['away_team'] = response.xpath(FlashscoreSpider.away_xp).get()
        item['first_half_home_score'] = response.xpath(FlashscoreSpider.
                                                       first_half_home_xp).get()
        item['first_half_away_score'] = response.xpath(FlashscoreSpider.
                                                       first_half_away_xp).get()
        item['home_score'] = response.xpath(FlashscoreSpider.
                                            home_score_xp).get()
        item['away_score'] = response.xpath(FlashscoreSpider.
                                            away_score_xp).get()
        for goal in response.xpath(FlashscoreSpider.home_goal_xp):
            item['home_player'] = response.xpath("./following::\
div[2]/text()").getall()
            item['home_time_goal'] = response.xpath("./preceding::\
div[1]/text()").getall()
        for goal in response.xpath(FlashscoreSpider.away_goal_xp):
            item['away_player'] = response.xpath("./following::\
div[1]/text()").getall()
            item['away_time_goal'] = response.xpath("./preceding::\
div[2]/text()").getall()
        yield item

    def parse_statistique(self, response):
        item = StatistiqueItem()
        item['journée'] = response.xpath(FlashscoreSpider.round_xp).get()
        item['home_team'] = response.xpath(FlashscoreSpider.home_xp).get()
        item['away_team'] = response.xpath(FlashscoreSpider.away_xp).get()
        for shoot in response.xpath(FlashscoreSpider.shoot_xp):
            item['home_shoot'] = response.xpath("./preceding\
::div[1]/text()").get()
            item['away_shoot'] = response.xpath("./following\
::div[1]/text()").get()
        for acc_shoot in response.xpath(FlashscoreSpider.acc_shoot_xp):
            item['home_acc_shoot'] = response.xpath("./preceding\
::div[1]/text()").get()
            item['away_acc_shoot'] = response.xpath("./following\
::div[1]/text()").get()
        for corner in response.xpath(FlashscoreSpider.corner_xp):
            item['home_corner'] = response.xpath("./preceding\
::div[1]/text()")
            item['away_corner'] = response.xpath("./following\
::div[1]/text()")
        for card in response.xpath(FlashscoreSpider.yellow_card_xp):
            item['home_yellow_c'] = response.xpath("./preceding\
::div[1]/text()")
            item['away_yellow_c'] = response.xpath("./following\
::div[1]/text()")
        yield item

    def parse_statistique_1(self, response):
        item = StatistiqueItem()
        item['journée'] = response.xpath(FlashscoreSpider.round_xp).get()
        item['home_team'] = response.xpath(FlashscoreSpider.home_xp).get()
        item['away_team'] = response.xpath(FlashscoreSpider.away_xp).get()
        for shoot in response.xpath(FlashscoreSpider.shoot_xp):
            item['first_half_home_shoot'] = response.xpath("./preceding\
::div[1]/text()").get()
            item['first_half_away_shoot'] = response.xpath("./following\
::div[1]/text()").get()
        for acc_shoot in response.xpath(FlashscoreSpider.acc_shoot_xp):
            item['first_half_home_acc_shoot'] = response.xpath("./preceding\
::div[1]/text()").get()
            item['first_half_away_acc_shoot'] = response.xpath("./following\
::div[1]/text()").get()
        for corner in response.xpath(FlashscoreSpider.corner_xp):
            item['first_half_home_corner'] = response.xpath("./preceding\
::div[1]/text()")
            item['first_half_away_corner'] = response.xpath("./following\
::div[1]/text()")
        for card in response.xpath(FlashscoreSpider.yellow_card_xp):
            item['first_half_home_yellow_c'] = response.xpath("./preceding\
::div[1]/text()")
            item['first_half_away_yellow_c'] = response.xpath("./following\
::div[1]/text()")
        yield item

    def parse_head_to_head(self, response):
        item = HeadtoheadItem()
        item['year'] = response.xpath(FlashscoreSpider.date_h2h_xp).get
        item['home_team'] = response.xpath(FlashscoreSpider.home_h2h_xp).get
        item['away_team'] = response.xpath(FlashscoreSpider.away_h2h_xp).get
        for score in response.xpath(FlashscoreSpider.score_h2h_xp).get:
            item['home_goal'] = response.xpath("./span[1]/text()").get
            item['away_goal'] = response.xpath("./span[2]/text()").get
        yield item

    async def errback_close_page(self, failure):
        page = failure.request.meta["playwright_page"]
        await page.close()
