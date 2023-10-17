"""Spiders module."""
from scraper.pipeline.processing import Preprocessing
import datetime
import random
import time

from selenium import webdriver
from selenium.webdriver.firefox.options import Options as FirefoxOptions
from selenium.webdriver.support import expected_conditions as EC
from selenium.webdriver.support.ui import WebDriverWait
from selenium.webdriver.common.by import By
import pandas as pd


class FixtureSpider(object):
    """Crawl on flashscore web site to collect
       the last next match from fixture"""

    fix_xp = '//div[@class="event__match event__match--static event__match\
--scheduled event__match--last event__match--twoLine"] [1]'
    mp_xp = '//div[@class="event__round event__round--static"]'
    time_xp = './div[@class="event__time"]'

    def __init__(self, fix_url, fix_fPath):
        self.fix_url = fix_url
        self.fix_fPath = fix_fPath
        self.options = webdriver.FirefoxOptions()
        self.options.headless = True
        self.driver = webdriver.Firefox(options=self.options)
        self.driver.implicitly_wait(10)
        self.wait = WebDriverWait(self.driver, 10)
        try:
            self.driver.get(self.fix_url)
        except Exception as err:
            self.driver.quit()
            print(f"Connection failed\n {err}")

    def parse_item(self):
        """collect round, date and time
           Save in a file inside fix_fPath
        """
        event_match = self.wait.until(
                EC.visibility_of_element_located((By.XPATH,
                                                  FixtureSpider.fix_xp)))
        match_play = self.wait.until(
            EC.visibility_of_element_located((By.XPATH,
                                              FixtureSpider.mp_xp))).text
        try:
            # A web page can either load in English or in French
            if len(match_play) == 7 or len(match_play) == 8:
                # in the former the text inside the selector is ROUND
                # exple = ROUND 7 or 10
                match_play = match_play[6:]
            else:
                # in the latter the text is JOURNÉE
                # exple = JOURNÉE 13
                match_play = match_play[8:]  # Note we only take the number
            item = {}
            item['mp'] = match_play
            item['date_time'] = event_match.find_element(By.XPATH,
                                                         FixtureSpider.
                                                         time_xp).text
            mp = item.get('mp')
            date_time = item.get("date_time")
        except Exception as err:
            print(f"{type(err)}, {err}")
        else:
            with open(self.fix_fPath, "w") as f:
                f.write(f"MP={mp}, {date_time}")
        finally:
            self.driver.quit()


class ResultSpider(Preprocessing):
    """That spider crawl matchs results
       from flashscore web site"""

    DATAFRAME = []
    LOG_FILE = ('/home/hhanstein/Projects/IA/probettor/football/scraping\
/selenium/flashscore/league/crawler.log')
    STRF_DATE_NOW = datetime.datetime.now().strftime("%c")

    event_xp = '//div[contains(@class, "event__match event__match--static \
event__match")]'
    mp_xp = '//div[@class="event__round event__round--static"]'
    time_xp = './div[@class="event__time"]'
    home_xp = './div[contains(@class, "participant--home")]'
    away_xp = './div[contains(@class, "participant--away")]'
    first_home_xp = './div[@class="event__part event__part--home \
event__part--1"]'
    first_away_xp = './div[@class="event__part event__part--away \
event__part--1"]'
    score_home_xp = './div[@class="event__score event__score--home"]'
    score_away_xp = './div[@class="event__score event__score--away"]'

    def __init__(self, rsl_url, rsl_fPath, fix_fPath, nm_table, surfix):
        super().__init__(rsl_fPath, nm_table, surfix)
        self.rsl_url = rsl_url
        self.rsl_fPath = rsl_fPath
        self.fix_fPath = fix_fPath
        self.nm_table = nm_table
        self.surfix = surfix
        self.options = webdriver.FirefoxOptions()
        self.options.headless = True
        self.driver = webdriver.Firefox(options=self.options)
        self.driver.implicitly_wait(10)
        self.wait = WebDriverWait(self.driver, 10)
        try:
            self.driver.get(self.rsl_url)
        except Exception as err:
            self.driver.quit()
            print(f"Connection failed\n {err}")

    def parse_item(self):
        """collect date, time, teams and goals of each event,
            apply a preprocessing methode on them
            and save one copy in csv format.
        """
        start = time.perf_counter()
        event_match = self.wait.until(
                EC.visibility_of_all_elements_located((
                    By.XPATH, ResultSpider.event_xp)))
        match_play = self.wait.until(
                EC.visibility_of_element_located((By.XPATH,
                                                  ResultSpider.mp_xp))).text
        try:
            # A web page can either load in English or in French
            if len(match_play) == 7 or len(match_play) == 8:
                match_play = match_play[6:]
                # in the former the text inside the selector is ROUND
                # exple = ROUND 7 or 10
            else:
                match_play = match_play[8:]
                # in the latter the text is JOURNÉE
                # exple = JOURNÉE 13
            for event in event_match[:10]:
                item = {}
                item['mp'] = match_play
                date_time = event.find_elements(By.XPATH,
                                                ResultSpider.time_xp)
                for dT in date_time:
                    item['date_time'] = dT.text
                home_team = event.find_elements(By.XPATH, ResultSpider.home_xp)
                for hT in home_team:
                    item['home_team'] = hT.text
                away_team = event.find_elements(By.XPATH, ResultSpider.away_xp)
                for aT in away_team:
                    item['away_team'] = aT.text
                first_home_goal = event.find_elements(By.XPATH,
                                                      ResultSpider.
                                                      first_home_xp)
                for f_hG in first_home_goal:
                    item['1st_home_goal'] = f_hG.text[1]
                first_away_goal = event.find_elements(By.XPATH,
                                                      ResultSpider.
                                                      first_away_xp)
                for f_Ag in first_away_goal:
                    item['1st_away_goal'] = f_Ag.text[1]
                home_goal = event.find_elements(By.XPATH,
                                                ResultSpider.score_home_xp)
                for hG in home_goal:
                    item['total_home_goal'] = hG.text
                away_goal = event.find_elements(By.XPATH,
                                                ResultSpider.score_away_xp)
                for aG in away_goal:
                    item['total_away_goal'] = aG.text
                ResultSpider.DATAFRAME.append(item)
        except Exception as err:
            print(f"{type(err)}, {err}")
        else:
            results = pd.DataFrame(ResultSpider.DATAFRAME)
            print(results)
            super().summary_to_csv(results)
            with open(self.fix_fPath, "r") as f:
                next = f.read()
            end = time.perf_counter()
            time_elpased = (end - start)
            status = f"{self.surfix}: rows={results.shape[0]}, \
MP={match_play}, seconds elapsed={time_elpased}. coming: {next}."
            with open(ResultSpider.LOG_FILE, "a") as lg:
                lg.write(f"\n{ResultSpider.STRF_DATE_NOW}. {status}")
        finally:
            self.driver.quit()


if __name__ == "__main__":
    fix_url = ('https://www.flashscore.com/football/netherlands/eredivisie/\
fixtures/')
    fix_fPath = ("/home/hhanstein/Projects/IA/probettor/football/data/event\
/2022_23/fixtures/eredivisie.txt")
    rsl_url = ('https://www.flashscore.com/football/netherlands/eredivisie/\
results/')
    rsl_fPath = ("/home/hhanstein/Projects/IA/probettor/football/data/event\
/2022_23/results/eredivisie.csv")
    nm_table = 'home_resultsEr'
    surfix = 'Er'

    ixSpider = FixtureSpider(fix_url, fix_fPath).parse_item()
    time.sleep(random.randrange(3, 5))
    rslSpider = ResultSpider(rsl_url, rsl_fPath, fix_fPath,
                             nm_table, surfix).parse_item()
