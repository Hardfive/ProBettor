# Define here the models for your scraped items
#
# See documentation in:
# https://docs.scrapy.org/en/latest/topics/items.html

import scrapy


class SummaryItem(scrapy.Item):
    # define the fields for your item here like:
    # name = scrapy.Field()
    journée = scrapy.Field()
    home_team = scrapy.Field()
    away_team = scrapy.Field()
    first_half_home_score = scrapy.Field()
    first_half_away_score = scrapy.Field()
    home_score = scrapy.Field()
    away_score = scrapy.Field()
    home_player = scrapy.Field()
    home_time_goal = scrapy.Field()
    away_player = scrapy.Field()
    away_time_goal = scrapy.Field()


class StatistiqueItem(scrapy.Item):
    home_shoot = scrapy.Field()
    away_shoot = scrapy.Field()
    home_acc_shoot = scrapy.Field()
    away_acc_shoot = scrapy.Field()
    home_corner = scrapy.Field()
    away_corner = scrapy.Field()
    home_yellow_c = scrapy.Field()
    away_yellow_c = scrapy.Field()
    first_half_home_shoot = scrapy.Field()
    first_half_away_shoot = scrapy.Field()
    first_half_home_acc_shoot = scrapy.Field()
    first_half_away_acc_shoot = scrapy.Field()
    first_half_home_corner = scrapy.Field()
    first_half_away_corner = scrapy.Field()
    first_half_home_yellow_c = scrapy.Field()
    first_half_away_yellow_c = scrapy.Field()


class HeadtoheadItem(scrapy.Item):
    year = scrapy.Field()
    home_team = scrapy.Field()
    away_team = scrapy.Field()
    home_goal = scrapy.Field()
    away_goal = scrapy.Field()
