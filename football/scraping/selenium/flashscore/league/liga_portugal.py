from ligue1 import Process

fixture_url = ('https://www.flashscore.fr/football/portugal/liga-portugal\
/calendrier/')
result_url = ('https://www.flashscore.fr/football/portugal/liga-portugal\
/resultats/')
lig_id = 'ligpo'

my_spider = Process(fixture_url, result_url, lig_id).pipeline()
