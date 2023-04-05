from ligue1 import Process

fix_url = ('https://www.flashscore.fr/football/portugal/liga-portugal/\
calendrier/')
fix_fPath = ("/home/hhanstein/Projects/IA/probettor/football/data/event\
/2022_23/fixtures/liga_portugal.txt")
rsl_url = ('https://www.flashscore.fr/football/portugal/liga-portugal/\
resultats/')
rsl_fPath = ("/home/hhanstein/Projects/IA/probettor/football/data/event\
/2022_23/results/liga_portugal.csv")
nm_table = 'home_resultsLp'
surfix = 'Lp'

my_spider = Process(fix_url, fix_fPath, rsl_url, rsl_fPath,
                    nm_table, surfix).pipeline()
