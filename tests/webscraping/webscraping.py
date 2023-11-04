import unittest
from scraper.spider.crawler import ResultSpider, FixtureSpider
from scraper.pipeline.processing import Preprocessing

fixture_url = ('https://www.flashscore.fr/football/france/ligue-2/\
calendrier/')
result_url = ('https://www.flashscore.fr/football/france/ligue-2/\
resultats/')
lig_id = "l2"


class TestWebscraping(unittest.TestCase):
    
    def setUp(self):
        self.ResultSpider = ResultSpider(result_url, lig_id, events=3)
        self.FixtureSpider = FixtureSpider(fixture_url, lig_id)

    def test_get_match_id(self):
        match_id = self.ResultSpider.get_match_id()
        self.assertEqual(match_id, 3)
        
    def test_get_summary(self):
        summary = self.ResultSpider.get_summary()
        

class TestPreprocessing(unittest.TestCase):

    def setUp(self):
        self.preprocessing = Preprocessing(lig_id='l2')

    def test_summary_preprocessing(self):
        for i, row in df.iterrows():
            self.preprocessing.summary_preprocessing(row)


if __name__ == "__main__":
    unittest.main()
