from football.scraper.spider.crawler import FixtureSpider, ResultSpider
from gestion_db import Admin
from dict_db import Description
import datetime
import time
import random
import os
import sys
import traceback

import pymysql


class Process(Admin):
    """Avoid to run spiders manually and always checking
    if there are new data to collect on the web site.
    """

    PWD = os.environ.get('DB_PWD')

    def __init__(self, fixture_url,  result_url, lig_id, events, start=0):
        self.fixture_url = fixture_url
        self.result_url = result_url
        self.lig_id = lig_id
        self.events = events
        self.start = start
        self.connection = pymysql.connect(
                            host='localhost',
                            user='hh',
                            passwd=Process.PWD,
                            database='football')

    def pipeline(self):
        """Check if the last event of the round
            has been played to run the spiders"""
        start = time.perf_counter()
        with self.connection.cursor() as cur:
            try:
                request = f"SELECT MAX(`date_time`) FROM {self.lig_id}_fixture"
                cur.execute(request)
                date_time = cur.fetchone()
                date_time = date_time[0]
            except pymysql.err.ProgrammingError:
                # create tables if them does not exists yet
                super().create_table(Description.TABLES)
                FixtureSpider(self.fixture_url, self.lig_id).crawl()
                sys.exit(0)
        try:
            date_now = datetime.datetime.now()
            if date_time <= datetime.datetime(date_now.year, date_now.month,
                                              date_now.day, date_now.hour-3,
                                              date_now.minute):
                FixtureSpider(self.fixture_url, self.lig_id, self.events).crawl()
                time.sleep(random.randrange(3, 5))
                result = ResultSpider(self.result_url, self.lig_id,
                             self.events, self.start)
                result.crawl()
            else:
                print(f"Not ready: {(date_time-date_now)} \
before running.")
        except TypeError:
            print(traceback.print_exc())
        finally:
            end = time.perf_counter()
            print(f"time={(end-start)} seconds elapsed.")


if __name__ == "__main__":
    fixture_url = ('https://www.flashscore.fr/football/france/ligue-1/\
calendrier/')
    result_url = ('https://www.flashscore.fr/football/france/ligue-1/\
resultats/')
    lig_id = "l1"

    my_spider = Process(fixture_url, result_url, lig_id, events=10).pipeline()
