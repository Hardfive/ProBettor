from football.league.ligue1 import Process

fixture_url = ('https://www.flashscore.fr/football/italie/serie-a/calendrier/')
result_url = ('https://www.flashscore.fr/football/italie/serie-a/resultats/')
lig_id = 'sA'

my_spider = Process(fixture_url, result_url, lig_id, events=10).pipeline()
