from ligue1 import Process

fix_url = ('https://www.flashscore.fr/football/france/ligue-2/\
calendrier/')
fix_fPath = ("/home/hhanstein/Projects/IA/probettor/football/data/event\
/2022_23/fixtures/ligue2.txt")
rsl_url = ('https://www.flashscore.fr/football/france/ligue-2/\
resultats/')
rsl_fPath = ("/home/hhanstein/Projects/IA/probettor/football/data/event\
/2022_23/results/ligue2.csv")
nm_table = 'home_resultsL2'
surfix = 'L2'

my_spider = Process(fix_url, fix_fPath, rsl_url, rsl_fPath,
                    nm_table, surfix).pipeline()
