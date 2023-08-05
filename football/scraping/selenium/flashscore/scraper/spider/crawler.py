"""Spider module
This module contains two spider class, made to crawl the same web site
but on different pages.

FixtureSpider :
    The first spider scrape the fixture data
    it has for tasks to retrieve information
    about matchs to comming in the next "journée"
    such as: round, time and teams involved.

ResultSpider :
    ResultSpider is the more complexe of two spider class
    it navigate on several pages to collect information about
    match details suchs as :
    score, player, statistics and incident occured in the match
    It contains several methods, which call other methods from
    an another module.

Both of two spider do call processing methods to clean the data
and communicate with database.

Author: Hans Houphouet
"""
from scraper.pipeline.processing import Preprocessing
import datetime
import asyncio
import time
import random

from selenium import webdriver
from selenium.webdriver.firefox.options import Options as FirefoxOptions
from selenium.webdriver.support import expected_conditions as EC
from selenium.webdriver.support.ui import WebDriverWait
from selenium.webdriver.common.by import By

round_to_coming = ''


class FixtureSpider(Preprocessing):

    summary_page = []
    LAST_EVENT_XP = '//div[@class="event__match event__match--static \
event__match--scheduled event__match--last event__match--twoLine"] [1]'
    ALL_EVENT_XP = '//div[@class="event__match event__match--static \
event__match--scheduled event__match--twoLine"]'
    ROUND_XP = '//span[@class="tournamentHeader__country"]/a'
    TIME_XP = '//div[@class="duelParticipant__startTime"]'
    HOME_TEAM_XP = "//div[@class='duelParticipant__home ']//\
a[@class='participant__participantName participant__overflow ']"
    AWAY_TEAM_XP = "//div[@class='duelParticipant__away ']//\
a[@class='participant__participantName participant__overflow ']"

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
        # await asyncio.sleep(0)
        self.driver.get(url)
        item = {}
        item['journée'] = self.driver.find_element(By.XPATH,
                                                   FixtureSpider.
                                                   ROUND_XP).text[-2:]
        item['date_time'] = self.driver.find_element(By.XPATH,
                                                     FixtureSpider.
                                                     TIME_XP).text
        item['home_team'] = self.driver.find_element(By.XPATH,
                                                     FixtureSpider.
                                                     HOME_TEAM_XP).text
        item['away_team'] = self.driver.find_element(By.XPATH,
                                                     FixtureSpider.
                                                     AWAY_TEAM_XP).text
        self.driver.close()
        self.driver.switch_to.window(self.driver.window_handles[0])
        super().fixture_processing(fixture=item)
        return item['journée']

    async def item_parse(self):
        tasks = []
        for url in FixtureSpider.summary_page:
            task = asyncio.create_task(FixtureSpider.parsing(self, url))
            tasks.append(task)
        await asyncio.gather(*tasks)

    def crawl(self):
        try:
            start = time.perf_counter()
            FixtureSpider.parse(self)
            asyncio.run(FixtureSpider.item_parse(self))
            print(time.perf_counter() - start)
        except Exception as err:
            print(err)
        finally:
            self.driver.close()


class ResultSpider(Preprocessing):
    summary_page = []
    stats_page = []
    h2h_page = []
    journée = ''

    LOG_FILE = ('/home/hhanstein/Projects/IA/probettor/football/scraping\
/selenium/flashscore/league/crawler.log')
    STRF_DATE_NOW = datetime.datetime.now().strftime("%c")

    MP_XP = '//div[@class="event__round event__round--static"]'
    EVENT_XP = '//div[contains(@class, "event__match event__match--static \
event__match")]'
    ROUND_XP = '//span[@class="tournamentHeader__country"]/a'
    TIME_XP = '//div[@class="duelParticipant__startTime"]'
    HOME_XP = '//div[contains(@class, "duelParticipant__home")]//\
a[@class="participant__participantName participant__overflow "]'
    AWAY_XP = '//div[contains(@class, "duelParticipant__away")]//\
a[@class="participant__participantName participant__overflow "]'
    FIRST_HALF_SCORE_XP = '(//div[@class="smv__incidentsHeader section__title\
"]/div[2])[1]'
    SCORE_XP = '//div[@class="detailScore__wrapper"]'
    HOME_GOAL_XP = '//div[@class="smv__participantRow smv__homeParticipant"]\
//div[contains(@title, "C''est le but") or contains(@title, "But !") or \
contains(@title, "du but") or contains(@title, "au but")\
or contains(@title, "finition") or contains(@title, "Quel beau moment")]'
    AWAY_GOAL_XP = '//div[@class="smv__participantRow smv__awayParticipant"]\
//div[contains(@title, "C''est le but") or contains(@title, "But !") or \
contains(@title, "du but") or contains(@title, "au but")\
or contains(@title, "finition") or contains(@title, "Quel beau moment")]'
    SHOOT_XP = '//div[@class="stat__row"]//div[contains(text(),\
"Tirs au but")]'
    ACCURATE_SHOOT_XP = '//div[@class="stat__row"]//div[contains(text(),\
"Tirs cadrés")]'
    CORNER_XP = '//div[@class="stat__row"]//div[contains(text(),\
"Corners")]'
    YELLOW_CARD_XP = '//div[@class="stat__row"]//div[contains(text(),\
"Cartons Jaunes")]'
    EXCEPTED_GOAL_XP = ''
    EVENT_H2H_XP = '//div[@class="h2h__section section "][2]\
//div[@class="h2h__row"]'
    DATE_H2H_XP = './/span[@class="h2h__date"]'
    HOME_H2H_XP = './/span[@class="h2h__homeParticipant h2h__participant "]'
    AWAY_H2H_XP = './/span[@class="h2h__awayParticipant h2h__participant "]'
    SCORE_H2H_XP = './/span[@class="h2h__result"]'
    preceding = './preceding::div[1]'
    following = './following::div[1]'

    def __init__(self, rsl_url, lig_id, events):
        super().__init__(lig_id)
        self.rsl_url = rsl_url
        self.lig_id = lig_id
        self.events = events
        self.options = webdriver.FirefoxOptions()
        self.options.headless = True
        self.driver = webdriver.Firefox(options=self.options)
        self.driver.implicitly_wait(20)
        self.wait = WebDriverWait(self.driver, 10)
        try:
            self.driver.get(self.rsl_url)
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

    async def summary(self, url):
        goals_df = []
        results_df = []
        self.driver.execute_script("window.open('');")
        self.driver.switch_to.window(self.driver.window_handles[1])
        await asyncio.sleep(0)
        self.driver.get(url)
        results_items = {}
        results_items['journée\
'] = self.driver.find_element(By.XPATH, ResultSpider.ROUND_XP).text[-2:]
        results_items['date_time\
'] = self.driver.find_element(By.XPATH, ResultSpider.TIME_XP).text
        results_items['home_team\
'] = self.driver.find_element(By.XPATH, ResultSpider.HOME_XP).text
        results_items['away_team\
'] = self.driver.find_element(By.XPATH, ResultSpider.AWAY_XP).text
        results_items['1st_home_team_goal\
'] = self.driver.find_element(By.XPATH,
                              ResultSpider.FIRST_HALF_SCORE_XP).text[0]
        results_items['1st_away_team_goal\
'] = self.driver.find_element(By.XPATH,
                              ResultSpider.FIRST_HALF_SCORE_XP).text[-1:]
        results_items['total_home_team_goal\
'] = self.driver.find_element(By.XPATH,
                              ResultSpider.SCORE_XP).text[0]
        results_items['total_away_team_goal\
'] = self.driver.find_element(By.XPATH,
                              ResultSpider.SCORE_XP).text[-1:]
        home_goals = self.driver.find_elements(By.XPATH,
                                               ResultSpider.
                                               HOME_GOAL_XP)
        for goal in home_goals:
            player = goal.find_element(By.XPATH,
                                       './following::div[2]').text
            time_goal = goal.find_element(By.XPATH, './preceding::\
div[1]').text[:-1]
            my_list = [results_items['journée'],
                       player, time_goal,
                       results_items['home_team'],
                       results_items['away_team']]
            goals_df.append(my_list)
        away_goals = self.driver.find_elements(By.XPATH,
                                               ResultSpider.
                                               AWAY_GOAL_XP)
        for goal in away_goals:
            player = goal.find_element(By.XPATH,
                                       './following::div[1]').text
            time_goal = goal.find_element(By.XPATH, './preceding::\
div[2]').text[:-1]
            my_list = [results_items['journée'],
                       player, time_goal,
                       results_items['away_team'],
                       results_items['home_team']]
            goals_df.append(my_list)
        results_df.append(results_items)
        # ID = self.driver.current_url[32:40]
        self.driver.close()
        self.driver.switch_to.window(self.driver.window_handles[0])
        super().goal_processing(goals_df)
        super().summary_processing(results_df)

    async def parse_summary(self):
        tasks = []
        for url in ResultSpider.summary_page:
            task = asyncio.create_task(ResultSpider.summary(self, url))
            tasks.append(task)
        await asyncio.gather(*tasks)

    async def stats(self, url):
        stats_df = []
        self.driver.execute_script("window.open('');")
        self.driver.switch_to.window(self.driver.window_handles[1])
        await asyncio.sleep(0)
        self.driver.get(url)
        stat_items = {}
        stat_items['journée\
'] = self.driver.find_element(By.XPATH, ResultSpider.ROUND_XP).text[-2:]
        stat_items['date_time\
'] = self.driver.find_element(By.XPATH, ResultSpider.TIME_XP).text
        stat_items['home_team\
'] = self.driver.find_element(By.XPATH, ResultSpider.HOME_XP).text
        stat_items['away_team\
'] = self.driver.find_element(By.XPATH, ResultSpider.AWAY_XP).text
        stat_shoots = self.driver.find_elements(By.XPATH,
                                                ResultSpider.
                                                SHOOT_XP)
        for i in stat_shoots:
            stat_items['home_team_shoot'] = i.find_element(By.XPATH,
                                                           ResultSpider.
                                                           preceding).text
            stat_items['away_team_shoot'] = i.find_element(By.XPATH,
                                                           ResultSpider.
                                                           following).text
        stat_acc_shoot = self.driver.find_elements(By.XPATH,
                                                   ResultSpider.
                                                   ACCURATE_SHOOT_XP)
        for i in stat_acc_shoot:
            stat_items['home_team_acc_shoot'] = i.find_element(By.XPATH,
                                                               ResultSpider.
                                                               preceding).text
            stat_items['away_team_acc_shoot'] = i.find_element(By.XPATH,
                                                               ResultSpider.
                                                               following).text
        stat_corners = self.driver.find_elements(By.XPATH,
                                                 ResultSpider.
                                                 CORNER_XP)
        for i in stat_corners:
            stat_items['home_team_corner'] = i.find_element(By.XPATH,
                                                            ResultSpider.
                                                            preceding).text
            stat_items['away_team_corner'] = i.find_element(By.XPATH,
                                                            ResultSpider.
                                                            following).text
        stat_yellow_cards = self.driver.find_elements(By.XPATH,
                                                      ResultSpider.
                                                      YELLOW_CARD_XP)
        for i in stat_yellow_cards:
            stat_items['home_team_yellow_c'] = i.find_element(By.XPATH,
                                                              ResultSpider.
                                                              preceding).text
            stat_items['away_team_yellow_c'] = i.find_element(By.XPATH,
                                                              ResultSpider.
                                                              following).text
        expected_goal = self.driver.find_elements(By.XPATH,
                                                  ResultSpider.
                                                  EXCEPTED_GOAL_XP)
        for i in expected_goal:
            stat_items['home_team_exg'] = i.find_element(By.XPATH,
                                                         ResultSpider.
                                                         preceding).text
            stat_items['away_team_exg'] = i.find_element(By.XPATH,
                                                         ResultSpider.
                                                         preceding).text
        stats_df.append(stat_items)
        # ID = self.driver.current_url[32:40]
        self.driver.close()
        self.driver.switch_to.window(self.driver.window_handles[0])
        super().stat_processing(stats_df)

    async def parse_stats(self):
        tasks = []
        for url in ResultSpider.stats_page:
            task = asyncio.create_task(ResultSpider.stats(self, url))
            tasks.append(task)
        await asyncio.gather(*tasks)

    async def h2h(self, url):
        self.driver.execute_script("window.open('');")
        self.driver.switch_to.window(self.driver.window_handles[1])
        await asyncio.sleep(0)
        self.driver.get(url)
        h2h_items = {}
        events_h2h_match = self.driver.find_elements(By.XPATH,
                                                     ResultSpider.
                                                     EVENT_H2H_XP)
        for event in events_h2h_match:
            dates = event.find_elements(By.XPATH,
                                        ResultSpider.DATE_H2H_XP)
            for date in dates:
                h2h_items['date'] = date.text
            home_teams = event.find_elements(By.XPATH,
                                             ResultSpider.
                                             HOME_H2H_XP)
            for h_team in home_teams:
                h2h_items['home_team'] = h_team.text
            away_teams = event.find_elements(By.XPATH,
                                             ResultSpider.
                                             AWAY_H2H_XP)
            for a_team in away_teams:
                h2h_items['away_team'] = a_team.text
            scores = event.find_elements(By.XPATH,
                                         ResultSpider.
                                         SCORE_H2H_XP)
            for score in scores:
                h2h_items['home_team_goal'] = score.text[0]
                h2h_items['away_team_goal'] = score.text[-1:]
            super().h2h_processing(h2h_items)
        self.driver.close()
        self.driver.switch_to.window(self.driver.window_handles[0])

    async def parse_h2h(self):
        tasks = []
        for url in ResultSpider.h2h_page:
            task = asyncio.create_task(ResultSpider.h2h(self, url))
            tasks.append(task)
        await asyncio.gather(*tasks)

    def crawl(self):
        try:
            start = time.perf_counter()
            ResultSpider.parse(self)
            asyncio.run(ResultSpider.parse_summary(self))
            asyncio.run(ResultSpider.parse_stats(self))
            asyncio.run(ResultSpider.parse_h2h(self))
            print(time.perf_counter() - start)
            status = f"{self.lig_id}: {ResultSpider.journée}, \
seconds elapsed={time.perf_counter() - start}.\n\
Next journée = {round_to_coming}"
            with open(ResultSpider.LOG_FILE, "a") as log:
                log.write(f"\n{ResultSpider.STRF_DATE_NOW}.\n\t{status}")
        except Exception as err:
            print(err)
        finally:
            self.driver.close()


if __name__ == "__main__":
    fxt_url = ('https://www.flashscore.com/football/spain/laliga/\
fixtures/')
    rsl_url = ('https://www.flashscore.com/football/spain/\
laliga-2022-2023/results/')
    lig_id = 'liga'

    fixSpider = FixtureSpider(fxt_url, lig_id).crawl()
    time.sleep(random.randrange(3, 5))
    rslSpider = ResultSpider(rsl_url, lig_id, events=10).crawl()
