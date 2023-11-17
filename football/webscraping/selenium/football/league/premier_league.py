from football.league.ligue1 import Process

fixture_url = ('https://www.flashscore.fr/football/angleterre/premier-league\
/calendrier/')
result_url = ('https://www.flashscore.fr/football/angleterre/premier-league\
/resultats/')
lig_id = 'pl'

my_spider = Process(fixture_url, result_url, lig_id, events=10).pipeline()
