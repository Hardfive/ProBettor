from ligue1 import Process

fixture_url = ('https://www.flashscore.fr/football/espagne/laliga/calendrier/')
result_url = ('https://www.flashscore.fr/football/espagne/laliga/resultats/')
lig_id = 'laliga'

my_spider = Process(fixture_url, result_url, lig_id, events=10).pipeline()
