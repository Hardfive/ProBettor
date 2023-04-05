from flashscore.scraper.spider.crawler import FixtureSpider, ResultSpider
import datetime
import time
import random


class Process(object):
    """Avoid us to run the spiders manually and always checking
    if there are new data to collect on the web site."""

    DATE_NOW = datetime.datetime.now()

    def __init__(self, fix_url, fix_fPath, rsl_url, rsl_fPath, nm_table,
                 surfix):
        self.fix_url = fix_url
        self.fix_fPath = fix_fPath
        self.rsl_url = rsl_url
        self.rsl_fPath = rsl_fPath
        self.nm_table = nm_table
        self.surfix = surfix

    def pipeline(self):
        """Check if the last event of the round
            has been played to finally run the spiders"""
        start = time.perf_counter()
        with open(self.fix_fPath, 'r') as file:
            date_time = file.read()
        month = date_time[10:12]
        if month[0] == 0:
            month = month[1]
        month = int(month)
        day = date_time[7:9]
        if day[0] == 0:
            day = day[1]
        day = int(day)
        hour = date_time[14:16]
        hour = int(hour)
        hour = hour + 3
        if hour > 23:
            day += 1
            hour = 10
        minute = date_time[17:19]
        minute = int(minute)
        date_time = datetime.datetime(2023, month, day, hour, minute)
        try:
            if date_time <= Process.DATE_NOW:
                try:
                    FixtureSpider(self.fix_url, self.fix_fPath).parse_item()
                    print("Sucessfully fixture scraping")
                except Exception as ex:
                    print(ex)
                else:
                    time.sleep(random.randrange(5, 8))
                    ResultSpider(self.rsl_url, self.rsl_fPath,
                                 self.fix_fPath, self.nm_table,
                                 self.surfix).parse_item()
                    print("Sucessfully results scraping")
            else:
                print(f"Not ready: {(date_time-Process.DATE_NOW)} \
before running.")
        except TypeError as error:
            print(f"Unexpected {error=} , {type(error)=}")
        finally:
            end = time.perf_counter()
            print(f"time={(end-start)} seconds elapsed.")


if __name__ == "__main__":
    fix_url = ('https://www.flashscore.fr/football/france/ligue-1/\
calendrier/')
    fix_fPath = ("/home/hhanstein/Projects/IA/probettor/football/data/event\
/2022_23/fixtures/ligue1.txt")
    rsl_url = ('https://www.flashscore.fr/football/france/ligue-1/\
resultats/')
    rsl_fPath = ("/home/hhanstein/Projects/IA/probettor/football/data/event\
/2022_23/results/ligue1.csv")
    nm_table = "home_resultsL1"
    surfix = "L1"
    my_spider = Process(fix_url, fix_fPath, rsl_url, rsl_fPath,
                        nm_table, surfix).pipeline()
