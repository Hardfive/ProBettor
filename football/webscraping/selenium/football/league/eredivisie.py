from football.league.ligue1 import Process

fixture_url = ('https://www.flashscore.fr/football/pays-bas/eredivisie\
/calendrier/')
result_url = ('https://www.flashscore.fr/football/pays-bas/eredivisie\
/resultats/')
lig_id = 'erdvs'

my_spider = Process(fixture_url, result_url, lig_id, events=9).pipeline()
