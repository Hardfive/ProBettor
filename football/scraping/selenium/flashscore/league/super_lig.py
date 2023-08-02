from ligue1 import Process

fixture_url = ('https://www.flashscore.fr/football/turquie/super-lig/\
calendrier/')
result_url = ('https://www.flashscore.fr/football/turquie/super-lig/\
resultats/')
lig_id = "Sl"

my_spider = Process(fixture_url, result_url, lig_id, events=9).pipeline()
