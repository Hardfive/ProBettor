from flashscore.scraper.spider.crawler import FixtureSpider, ResultSpider
import datetime
import time
import random
import os
import sys

import pymysql


class Process(object):
    """Avoid to run spiders manually and always checking
    if there are new data to collect on the web site.
    """

    DATE_NOW = datetime.datetime.now()
    PWD = os.environ.get('DB_PWD')

    def __init__(self, fixture_url,  result_url, lig_id, events):
        self.fixture_url = fixture_url
        self.result_url = result_url
        self.lig_id = lig_id
        self.events = events
        self.connection = pymysql.connect(
                            host='localhost',
                            user='hh',
                            passwd=Process.PWD,
                            database='football')

    def pipeline(self):
        """Check if the last event of the round
            has been played to finally run the spiders"""
        start = time.perf_counter()
        print('lets do it')
        with self.connection.cursor() as cur:
            try:
                request = f"SELECT MAX(`date_time`) FROM {self.lig_id}_fixture"
                cur.execute(request)
                date_time = cur.fetchone()
                date_time = date_time[0]
            except pymysql.err.ProgrammingError:
                print("error raised")
                FixtureSpider(self.fixture_url, self.lig_id).crawl()
                print("everything is okay")
                sys.exit(0)
        try:
            if date_time <= Process.DATE_NOW:
                try:
                    FixtureSpider(self.fixture_url, self.lig_id).crawl()
                    print("Sucessfully fixture scraping")
                except Exception as ex:
                    print(ex)
                else:
                    time.sleep(random.randrange(3, 5))
                    ResultSpider(self.result_url, self.lig_id,
                                 self.events).crawl()
                    print("Sucessfully result scraping")
            else:
                print(f"Not ready: {(date_time-Process.DATE_NOW)} \
before running.")
        except TypeError as error:
            print(f"Unexpected {error=} , {type(error)=}")
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
