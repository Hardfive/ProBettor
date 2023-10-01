from ligue1 import Process

fixture_url = ('https://www.flashscore.fr/football/allemagne/bundesliga\
/calendrier/')
result_url = ('https://www.flashscore.fr/football/allemagne/bundesliga\
/resultats/')
lig_id = 'bdliga'

my_spider = Process(fixture_url, result_url, lig_id, events=9).pipeline()
