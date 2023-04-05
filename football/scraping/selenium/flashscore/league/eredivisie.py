from ligue1 import Process

fix_url = ('https://www.flashscore.com/football/netherlands/eredivisie/\
fixtures/')
fix_fPath = ("/home/hhanstein/Projects/IA/probettor/football/data/event\
/2022_23/fixtures/eredivisie.txt")
rsl_url = ('https://www.flashscore.com/football/netherlands/eredivisie/\
results/')
rsl_fPath = ("/home/hhanstein/Projects/IA/probettor/football/data/event\
/2022_23/results/eredivisie.csv")
nm_table = 'home_resultsEr'
surfix = 'Er'

my_spider = Process(fix_url, fix_fPath, rsl_url, rsl_fPath,
                    nm_table, surfix).pipeline()
