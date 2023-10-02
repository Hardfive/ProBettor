"""Spider module
This module contains two spider class, made to crawl the same web site
but on different pages.
Both of two spiders do call processing methods to clean the data
and communicate with database.

"""
from scraper.pipeline.processing import Preprocessing
from pathlib import Path
import os
import datetime
import asyncio
import time
import random

from selenium import webdriver
from selenium.webdriver.firefox.options import Options as FirefoxOptions
from selenium.webdriver.support import expected_conditions as EC
from selenium.webdriver.support.ui import WebDriverWait
from selenium.webdriver.common.by import By
import configparser


class FixtureSpider(Preprocessing):
    """That spider scrape the fixture data
    retrieve information about matchs to comming
    in the next round."""

    summary_page = []
    config = configparser.RawConfigParser()
    thisfolder = os.path.dirname(os.path.abspath(__file__))
    ini_file = os.path.join(thisfolder, 'xpConfig.ini')
    config.read(ini_file)
    LAST_EVENT_XP = config.get('FixtureSpiderXpath', 'last_event_xp')
    ALL_EVENT_XP = config.get('FixtureSpiderXpath', 'all_event_xp')
    ROUND_XP = config.get('FixtureSpiderXpath', 'round_xp')
    TIME_XP = config.get('FixtureSpiderXpath', 'time_xp')
    HOME_TEAM_XP = config.get('FixtureSpiderXpath', 'home_team_xp')
    AWAY_TEAM_XP = config.get('FixtureSpiderXpath', 'away_team_xp')

    def __init__(self, fixture_url, lig_id):
        super().__init__(lig_id)
        self.fix_url = fixture_url
        self.options = webdriver.FirefoxOptions()
        self.options.headless = True
        self.driver = webdriver.Firefox(options=self.options)
        self.driver.implicitly_wait(10)
        # self.wait = WebDriverWait(self.driver, 10)
        try:
            self.driver.get(self.fix_url)
        except Exception:
            self.driver.quit()
            print("Connection failed\nTry check it.")

    def parse(self):
        last_match = self.driver.find_element(By.XPATH,
                                              FixtureSpider.LAST_EVENT_XP)
        # the main purpose of this script for now
        # is to allow us to get information about the last match like
        # when it has to be played and if it's time to collect all the results 
        # data, because of that the others IDs are ignored during the scraping.
        """all_matchs = self.driver.find_elements(By.XPATH,
                                                 FixtureSpider.ALL_EVENT_XP)
        for event in all_matchs[:self.events]:
            FixtureSpider.summary_page.append(f"https://www.flashscore.fr/match\
/{event.get_attribute('id')[4:]}/#/resume-du-match")"""
        FixtureSpider.summary_page.append(f"https://www.flashscore.fr/match\
/{last_match.get_attribute('id')[4:]}/#/resume-du-match")

    async def parsing(self, url):
        self.driver.execute_script("window.open('');")
        self.driver.switch_to.window(self.driver.window_handles[1])
        # await asyncio.sleep(0)  # uncomment this line to activate asyncio 
        self.driver.get(url)
        print("fixture scraping (ID=%s) started." % self.driver.current_url[32:40]) 
        items = {}
        items['journée'] = self.driver.find_element(By.XPATH,
                                                    FixtureSpider.
                                                    ROUND_XP).text[-2:]
        items['date_time'] = self.driver.find_element(By.XPATH,
                                                      FixtureSpider.
                                                      TIME_XP).text
        items['home_team'] = self.driver.find_element(By.XPATH,
                                                      FixtureSpider.
                                                      HOME_TEAM_XP).text
        items['away_team'] = self.driver.find_element(By.XPATH,
                                                      FixtureSpider.
                                                      AWAY_TEAM_XP).text
        self.driver.close()
        self.driver.switch_to.window(self.driver.window_handles[0])
        super().fixture_processing(fixture=items)

    async def item_parse(self):
        tasks = []
        for url in FixtureSpider.summary_page:
            task = asyncio.create_task(FixtureSpider.parsing(self, url))
            tasks.append(task)
        await asyncio.gather(*tasks, return_exceptions=True)

    def crawl(self):
        try:
            start = time.perf_counter()
            FixtureSpider.parse(self)
            asyncio.run(FixtureSpider.item_parse(self))
            print(f"Sucessfuly fixture scraping\n\
{round(time.perf_counter() - start, 2)}")
        except Exception as err:
            print(err)
        finally:
            self.driver.close()


class ResultSpider(Preprocessing):
    """ResultSpider is the more complexe of two spider classes
    it navigate on several pages to collect matchs details information
    contains several methods, which call other methods from
    an another module."""

    journée = ''
    summary_page = []
    stats_page = []
    h2h_page = []

    current_dir = Path.cwd()
    log_file_dir = current_dir.parent.parent
    LOG_FILE = log_file_dir / "league" / "crawler.log"

    config = configparser.ConfigParser()
    thisfolder = os.path.dirname(os.path.abspath(__file__))
    ini_file = os.path.join(thisfolder, 'xpConfig.ini')
    config.read(ini_file)
    MP_XP = config.get('ResultSpiderXpath', 'mp_xp')
    EVENT_XP = config.get('ResultSpiderXpath', 'event_xp')
    ROUND_XP = config.get('ResultSpiderXpath', 'round_xp')
    TIME_XP = config.get('ResultSpiderXpath', 'time_xp')
    HOME_XP = config.get('ResultSpiderXpath', 'home_xp')
    AWAY_XP = config.get('ResultSpiderXpath', 'away_xp')
    FIRST_HALF_SCORE_XP = config.get('ResultSpiderXpath', 'first_half_score_xp')
    SCORE_XP = config.get('ResultSpiderXpath', 'score_xp')
    HOME_GOAL_XP = config.get('ResultSpiderXpath', 'home_goal_xp')
    AWAY_GOAL_XP = config.get('ResultSpiderXpath', 'away_goal_xp')
    SHOOT_XP = config.get('ResultSpiderXpath', 'shoot_xp')
    ACCURATE_SHOOT_XP = config.get('ResultSpiderXpath', 'accurate_shoot_xp')
    CORNER_XP = config.get('ResultSpiderXpath', 'corner_xp')
    YELLOW_CARD_XP = config.get('ResultSpiderXpath', 'yellow_card_xp')
    EXCEPTED_GOAL_XP = config.get('ResultSpiderXpath', 'excepted_goal_xp')
    EVENT_H2H_XP = config.get('ResultSpiderXpath', 'event_h2h_xp')
    DATE_H2H_XP = config.get('ResultSpiderXpath', 'date_h2h_xp')
    HOME_H2H_XP = config.get('ResultSpiderXpath', 'home_h2h_xp')
    AWAY_H2H_XP = config.get('ResultSpiderXpath', 'away_h2h_xp')
    SCORE_H2H_XP = config.get('ResultSpiderXpath', 'score_h2h_xp')
    preceding = config.get('ResultSpiderXpath', 'preceding')
    following = config.get('ResultSpiderXpath', 'following')

    def __init__(self, result_url, lig_id, events):
        super().__init__(lig_id)
        self.result_url = result_url
        self.lig_id = lig_id
        self.events = events
        self.options = webdriver.FirefoxOptions()
        self.options.headless = True
        self.driver = webdriver.Firefox(options=self.options)
        self.driver.implicitly_wait(10)
        # self.wait = WebDriverWait(self.driver, 10)
        try:
            self.driver.get(self.result_url)
        except Exception:
            self.driver.quit()
            print("Connection failed\nTry check it.")

    def parse(self):
        ResultSpider.journée = self.driver.find_element(By.XPATH,
                                                        ResultSpider.
                                                        MP_XP).text
        event_match = self.driver.find_elements(By.XPATH,
                                                ResultSpider.EVENT_XP)
        for event in event_match[:self.events]:
            ResultSpider.summary_page.append(f"https://www.flashscore.fr/match\
/{event.get_attribute('id')[4:]}/#/resume-du-match/resume-du-match")
            ResultSpider.stats_page.append(f"https://www.flashscore.fr/match\
/{event.get_attribute('id')[4:]}/#/resume-du-match/statistiques-du-match/0")
            ResultSpider.h2h_page.append(f"https://www.flashscore.fr/match\
/{event.get_attribute('id')[4:]}/#/tete-a-tete/home")
        print("%s IDs scraped" % len(ResultSpider.summary_page))

    async def summary(self, url):
        list_items = []
        self.driver.execute_script("window.open('');")
        self.driver.switch_to.window(self.driver.window_handles[1])
        await asyncio.sleep(0)
        self.driver.get(url)
        print("SUMMARY SCRAPING (ID=%s) started" % self.driver.current_url[32:40]) 
        items = {}
        items['journée\
'] = self.driver.find_element(By.XPATH, ResultSpider.ROUND_XP).text[-2:]
        items['date_time\
'] = self.driver.find_element(By.XPATH, ResultSpider.TIME_XP).text
        items['home_team\
'] = self.driver.find_element(By.XPATH, ResultSpider.HOME_XP).text
        items['away_team\
'] = self.driver.find_element(By.XPATH, ResultSpider.AWAY_XP).text
        items['1st_home_team_goal\
'] = self.driver.find_element(By.XPATH,
                              ResultSpider.FIRST_HALF_SCORE_XP).text[0]
        items['1st_away_team_goal\
'] = self.driver.find_element(By.XPATH,
                              ResultSpider.FIRST_HALF_SCORE_XP).text[-1:]
        items['total_home_team_goal\
'] = self.driver.find_element(By.XPATH,
                              ResultSpider.SCORE_XP).text[0]
        items['total_away_team_goal\
'] = self.driver.find_element(By.XPATH,
                              ResultSpider.SCORE_XP).text[-1:]
        list_items.append(items)
        print("%s vs %s" % (items['home_team'], items['away_team']))
        self.driver.close()
        self.driver.switch_to.window(self.driver.window_handles[0])
        super().summary_processing(summary=list_items)

    async def goal(self, url):
        list_items = []
        self.driver.execute_script("window.open('');")
        await asyncio.sleep(0)
        self.driver.switch_to.window(self.driver.window_handles[1])
        self.driver.get(url)
        print("GOAL SCRAPING (ID=%s) started" % self.driver.current_url[32:40]) 
        items = {}
        items['journée\
'] = self.driver.find_element(By.XPATH, ResultSpider.ROUND_XP).text[-2:]
        items['home_team\
'] = self.driver.find_element(By.XPATH, ResultSpider.HOME_XP).text
        items['away_team\
'] = self.driver.find_element(By.XPATH, ResultSpider.AWAY_XP).text
        home_goals = self.driver.find_elements(By.XPATH,
                                               ResultSpider.
                                               HOME_GOAL_XP)
        for goal in home_goals:
            items['player'] = goal.find_element(By.XPATH,
                                                './following::div[1]').text
            items['time_goal'] = goal.find_element(By.XPATH,
                                                   './preceding::\
div[@class="smv__timeBox"][1]').text[:-1]
            if "+" in items['time_goal']:
                items['time_goal'] = items['time_goal'][:2]
            the_list = [items['journée'],
                        items['player'],
                        items['time_goal'],
                        items['home_team'],
                        items['away_team']]
            list_items.append(the_list)
        away_goals = self.driver.find_elements(By.XPATH,
                                               ResultSpider.
                                               AWAY_GOAL_XP)
        for goal in away_goals:
            items['player'] = goal.find_element(By.XPATH,
                                                './following::a[1]').text
            items['time_goal'] = goal.find_element(By.XPATH, 
                                                   './preceding::\
div[@class="smv__timeBox"][1]').text[:-1]
            if "+" in items['time_goal']:
                items['time_goal'] = items['time_goal'][:2]
            the_list = [items['journée'],
                        items['player'],
                        items['time_goal'],
                        items['away_team'],
                        items['home_team']]
            list_items.append(the_list)
        print("%s row(s) scraped" % len(list_items))
        self.driver.close()
        self.driver.switch_to.window(self.driver.window_handles[0])
        super().goal_processing(goal=list_items)

    async def stats(self, url):
        list_items = []
        self.driver.execute_script("window.open('');")
        await asyncio.sleep(0)
        self.driver.switch_to.window(self.driver.window_handles[1])
        self.driver.get(url)
        print("STATS SCRAPING (ID=%s) started" % self.driver.current_url[32:40]) 
        items = {}
        items['journée\
'] = self.driver.find_element(By.XPATH, ResultSpider.ROUND_XP).text[-2:]
        items['home_team\
'] = self.driver.find_element(By.XPATH, ResultSpider.HOME_XP).text
        items['away_team\
'] = self.driver.find_element(By.XPATH, ResultSpider.AWAY_XP).text
        shoots = self.driver.find_elements(By.XPATH,
                                                ResultSpider.
                                                SHOOT_XP)
        for i in shoots:
            items['home_team_shoot'] = i.find_element(By.XPATH,
                                                           ResultSpider.
                                                           preceding).text
            items['away_team_shoot'] = i.find_element(By.XPATH,
                                                           ResultSpider.
                                                           following).text
        acc_shoot = self.driver.find_elements(By.XPATH,
                                                   ResultSpider.
                                                   ACCURATE_SHOOT_XP)
        for i in acc_shoot:
            items['home_team_acc_shoot'] = i.find_element(By.XPATH,
                                                               ResultSpider.
                                                               preceding).text
            items['away_team_acc_shoot'] = i.find_element(By.XPATH,
                                                               ResultSpider.
                                                               following).text
        corners = self.driver.find_elements(By.XPATH,
                                                 ResultSpider.
                                                 CORNER_XP)
        for i in corners:
            items['home_team_corner'] = i.find_element(By.XPATH,
                                                            ResultSpider.
                                                            preceding).text
            items['away_team_corner'] = i.find_element(By.XPATH,
                                                            ResultSpider.
                                                            following).text
        yellow_cards = self.driver.find_elements(By.XPATH,
                                                      ResultSpider.
                                                      YELLOW_CARD_XP)
        for i in yellow_cards:
            items['home_team_yellow_card'] = i.find_element(By.XPATH,
                                                                 ResultSpider.
                                                                 preceding).text
            items['away_team_yellow_card'] = i.find_element(By.XPATH,
                                                                 ResultSpider.
                                                                 following).text
        expected_goal = self.driver.find_elements(By.XPATH,
                                                  ResultSpider.
                                                  EXCEPTED_GOAL_XP)
        for i in expected_goal:
            items['home_team_exg'] = i.find_element(By.XPATH,
                                                         ResultSpider.
                                                         preceding).text
            items['away_team_exg'] = i.find_element(By.XPATH,
                                                         ResultSpider.
                                                         preceding).text
        list_items.append(items)
        print("%s item(s) scraped / 13" % len(items.values()))
        self.driver.close()
        self.driver.switch_to.window(self.driver.window_handles[0])
        super().stat_processing(stats=list_items)

    async def h2h(self, url):
        self.driver.execute_script("window.open('');")
        await asyncio.sleep(0)
        self.driver.switch_to.window(self.driver.window_handles[1])
        self.driver.get(url)
        print("H2H SCRAPING (ID=%s) started" % self.driver.current_url[32:40]) 
        items = {}
        events_match = self.driver.find_elements(By.XPATH,
                                                     ResultSpider.
                                                     EVENT_H2H_XP)
        for event in events_match:
            dates = event.find_elements(By.XPATH,
                                        ResultSpider.DATE_H2H_XP)
            for date in dates:
                items['date'] = date.text
            home_teams = event.find_elements(By.XPATH,
                                             ResultSpider.
                                             HOME_H2H_XP)
            for h_team in home_teams:
                items['home_team'] = h_team.text
            away_teams = event.find_elements(By.XPATH,
                                             ResultSpider.
                                             AWAY_H2H_XP)
            for a_team in away_teams:
                items['away_team'] = a_team.text
            scores = event.find_elements(By.XPATH,
                                         ResultSpider.
                                         SCORE_H2H_XP)
            for score in scores:
                items['home_team_goal'] = score.text[0]
                items['away_team_goal'] = score.text[-1:]
            super().h2h_processing(h2h=items)
        print("%s row(s) scraped" % len(event))
        self.driver.close()
        self.driver.switch_to.window(self.driver.window_handles[0])

    async def parse_summary(self):
        tasks = []
        for url in ResultSpider.summary_page:
            task = asyncio.create_task(ResultSpider.summary(self, url))
            tasks.append(task)
        await asyncio.gather(*tasks, return_exceptions=True)

    async def parse_goal(self):
        tasks = []
        for url in ResultSpider.summary_page:
            task = asyncio.create_task(ResultSpider.goal(self, url))
            tasks.append(task)
        await asyncio.gather(*tasks, return_exceptions=True)

    async def parse_stats(self):
        tasks = []
        for url in ResultSpider.stats_page:
            task = asyncio.create_task(ResultSpider.stats(self, url))
            tasks.append(task)
        await asyncio.gather(*tasks, return_exceptions=True)

    async def parse_h2h(self):
        tasks = []
        for url in ResultSpider.h2h_page:
            task = asyncio.create_task(ResultSpider.h2h(self, url))
            tasks.append(task)
        await asyncio.gather(*tasks, return_exceptions=True)

    def crawl(self):
        try:
            date_now = datetime.datetime.now()
            start = time.perf_counter()
            ResultSpider.parse(self)
            asyncio.run(ResultSpider.parse_summary(self))
            asyncio.run(ResultSpider.parse_goal(self))
            asyncio.run(ResultSpider.parse_stats(self))
            asyncio.run(ResultSpider.parse_h2h(self))
            print(f"Sucessfuly results scraping\n\
{round(time.perf_counter() - start, 2)} seconds elapsed.")
            status = f"{self.lig_id}: {ResultSpider.journée}, \
seconds elapsed={round(time.perf_counter() - start, 2)}"
            with open(ResultSpider.LOG_FILE, "a") as log:
                log.write(f"\n{date_now}.\n\t{status}")
        except Exception as err:
            print(err)
        finally:
            self.driver.close()


if __name__ == "__main__":
    fixture_url = ('https://www.flashscore.fr/football/france/ligue-2/\
calendrier/')
    result_url = ('https://www.flashscore.fr/football/france/ligue-2/\
resultats/')
    lig_id = "l2"

    # fixSpider = FixtureSpider(fixture_url, lig_id).crawl()
    # time.sleep(random.randrange(3, 5))
    rslSpider = ResultSpider(result_url, lig_id, events=54).crawl()
