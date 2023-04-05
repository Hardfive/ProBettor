from ligue1 import Process

fix_url = ('https://www.flashscore.com/football/england/premier-league/\
fixtures/')
fix_fPath = ("/home/hhanstein/Projects/IA/probettor/football/data/event\
/2022_23/fixtures/premier_league.txt")
rsl_url = ('https://www.flashscore.com/football/england/premier-league/\
results/')
rsl_fPath = ("/home/hhanstein/Projects/IA/probettor/football/data/event\
/2022_23/results/premier_league.csv")
nm_table = 'home_resultsPl'
surfix = 'Pl'

my_spider = Process(fix_url, fix_fPath, rsl_url, rsl_fPath,
                    nm_table, surfix).pipeline()
