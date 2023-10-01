from ligue1 import Process

fixture_url = ('https://www.flashscore.fr/football/france/ligue-2/calendrier/')
result_url = ('https://www.flashscore.fr/football/france/ligue-2/resultats/')
lig_id = 'l2'

my_spider = Process(fixture_url, result_url, lig_id, events=10).pipeline()
