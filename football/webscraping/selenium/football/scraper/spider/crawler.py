"""Spider module
This module contains two spider class, made to crawl the same web site.
Both of two spiders do call preprocessing methods to clean the data
and communicate with database.
"""

from preprocessing import Preprocessing
from pathlib import Path
import os
import asyncio
import time
import traceback

from selenium import webdriver
from selenium.webdriver.firefox.options import Options as FirefoxOptions
from selenium.webdriver.support import expected_conditions as EC
from selenium.webdriver.support.ui import WebDriverWait
from selenium.webdriver.common.by import By
import configparser


class FixtureSpider(Preprocessing):
    """That spider retrieve information
      about matchs to comming in the next round."""

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

    def __init__(self, fixture_url, lig_id, events):
        super().__init__(lig_id)
        self.fix_url = fixture_url
        self.events = events
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

    def get_id(self):
        """all_matchs = self.driver.find_elements(By.XPATH,
                                               FixtureSpider.ALL_EVENT_XP)
        for event in all_matchs[:(self.events-1)]: # because the last match aren't part of it. 
            FixtureSpider.summary_page.append(f"https://www.flashscore.fr/match\
/{event.get_attribute('id')[4:]}/#/resume-du-match")"""
        last_match = self.driver.find_element(By.XPATH,
                                              FixtureSpider.LAST_EVENT_XP)
        FixtureSpider.summary_page.append(f"https://www.flashscore.fr/match\
/{last_match.get_attribute('id')[4:]}/#/resume-du-match")
        return FixtureSpider.summary_page

    def get_item(self):
        list_items = []
        pages = self.get_id()
        for url in pages:
            self.driver.execute_script("window.open('');")
            self.driver.switch_to.window(self.driver.window_handles[1])
            self.driver.get(url)
            print("FIXTURE SCRAPING (ID=%s)" % self.driver.current_url[32:40]) 
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
            print("%s: %s vs %s" % (items['journée'] ,items['home_team'], items['away_team']))
            list_items.append(items)
            self.driver.close()
            self.driver.switch_to.window(self.driver.window_handles[0])
        super().fixture_preprocessing(fixture=list_items)

    def crawl(self):
        try:
            start = time.perf_counter()
            FixtureSpider.get_item(self)
            print(f"Sucessfuly fixture scraping\n\
{round(time.perf_counter() - start, 2)}")
        except Exception as err:
            print(traceback.print_exc())
        finally:
            self.driver.close()


class ResultSpider(Preprocessing):
    """ResultSpider is the more complexe of two spider classes
    it navigate on several pages to collect matchs details.
    Contains several methods, which call other methods from
    preprocessing module."""

    summary_page = []
    stats_page = []
    h2h_page = []

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

    def __init__(self, result_url, lig_id, events, start=0):
        super().__init__(lig_id)
        self.result_url = result_url
        self.lig_id = lig_id
        self.events = events
        self.start = start
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

    def get_match_id(self):
        ResultSpider.journée = self.driver.find_element(By.XPATH,
                                                        ResultSpider.
                                                        MP_XP).text
        event_match = self.driver.find_elements(By.XPATH,
                                                ResultSpider.EVENT_XP)
        for event in event_match[self.start:(self.events+self.start)]:
            ResultSpider.summary_page.append(f"https://www.flashscore.fr/match\
/{event.get_attribute('id')[4:]}/#/resume-du-match/resume-du-match")
            ResultSpider.stats_page.append(f"https://www.flashscore.fr/match\
/{event.get_attribute('id')[4:]}/#/resume-du-match/statistiques-du-match/0")
            ResultSpider.h2h_page.append(f"https://www.flashscore.fr/match\
/{event.get_attribute('id')[4:]}/#/tete-a-tete/home")

    def get_summary(self):
        list_items = []
        for url in ResultSpider.summary_page:
            self.driver.execute_script("window.open('');")
            self.driver.switch_to.window(self.driver.window_handles[1])
            self.driver.get(url)
            print("SUMMARY SCRAPING (ID=%s)" % self.driver.current_url[32:40]) 
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
            print("%s: %s vs %s" % (items['journée'] ,items['home_team'], items['away_team']))
            self.driver.close()
            self.driver.switch_to.window(self.driver.window_handles[0])
        super().summary_preprocessing(data=list_items)

    def get_goals(self):
        list_items = []
        for url in ResultSpider.summary_page:
            self.driver.execute_script("window.open('');")
            self.driver.switch_to.window(self.driver.window_handles[1])
            self.driver.get(url)
            print("GOAL SCRAPING (ID=%s)" % self.driver.current_url[32:40]) 
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
        super().goal_preprocessing(goal=list_items)

    def get_h2h(self):
        list_item_h2h = []
        for url in ResultSpider.h2h_page:
            self.driver.execute_script("window.open('');")
            self.driver.switch_to.window(self.driver.window_handles[1])
            self.driver.get(url)
            print("H2H SCRAPING (ID=%s)" % self.driver.current_url[32:40]) 
            events_match = self.driver.find_elements(By.XPATH,
                                                         ResultSpider.
                                                         EVENT_H2H_XP)
            for event in events_match:
                items = {}
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
                list_item_h2h.append(items)
            print("%s row(s) scraped" % len(list_item_h2h))
            self.driver.close()
            self.driver.switch_to.window(self.driver.window_handles[0])
        super().h2h_preprocessing(h2h=list_item_h2h)

    def crawl(self):
        try:
            start = time.perf_counter()
            ResultSpider.get_match_id(self)
            ResultSpider.get_summary(self)
            ResultSpider.get_goals(self)
            ResultSpider.get_h2h(self)
            print(f"Sucessfuly results scraping\n\
{round(time.perf_counter() - start, 2)} seconds elapsed.")
        except Exception :
            print(traceback.print_exc())
        finally:
            self.driver.close()


if __name__ == "__main__":
    fixture_url = ('https://www.flashscore.fr/football/france/ligue-2/calendrier/')
    result_url = ('https://www.flashscore.fr/football/france/ligue-2/resultats/')
    lig_id = 'l2'

    # fxtSpider = FixtureSpider(fixture_url, lig_id, events=10).crawl()
    # rslSpider = ResultSpider(result_url, lig_id, events=98, start=74).crawl()
