from ligue1 import Process

fix_url = ('https://www.flashscore.fr/football/turquie/super-lig/\
calendrier/')
fix_fPath = ("/home/hhanstein/Projects/IA/probettor/football/data/event\
/2022_23/fixtures/super_lig.txt")
rsl_url = ('https://www.flashscore.fr/football/turquie/super-lig/\
resultats/')
rsl_fPath = ("/home/hhanstein/Projects/IA/probettor/football/data/event\
/2022_23/results/super_lig.csv")
nm_table = "home_resultsSl"
surfix = "Sl"

my_spider = Process(fix_url, fix_fPath, rsl_url, rsl_fPath,
                    nm_table, surfix).pipeline()
