from ligue1 import Process

fix_url = ('https://www.flashscore.com/football/germany/bundesliga/\
fixtures/')
fix_fPath = ("/home/hhanstein/Projects/IA/probettor/football/data/event\
/2022_23/fixtures/bundesliga.txt")
rsl_url = ('https://www.flashscore.com/football/germany/bundesliga/\
results/')
rsl_fPath = ("/home/hhanstein/Projects/IA/probettor/football/data/event\
/2022_23/results/bundesliga.csv")
nm_table = 'home_resultsBdL'
surfix = 'BdL'

my_spider = Process(fix_url, fix_fPath, rsl_url, rsl_fPath,
                    nm_table, surfix).pipeline()
