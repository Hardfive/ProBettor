from ligue1 import Process

fix_url = ('https://www.flashscore.com/football/spain/laliga/\
fixtures/')
fix_fPath = ("/home/hhanstein/Projects/IA/probettor/football/data/event\
/2022_23/fixtures/la_liga.txt")
rsl_url = ('https://www.flashscore.com/football/spain/laliga/\
results/')
rsl_fPath = ("/home/hhanstein/Projects/IA/probettor/football/data/event\
/2022_23/results/la_liga.csv")
nm_table = 'home_resultsLl'
surfix = 'Ll'

my_spider = Process(fix_url, fix_fPath, rsl_url, rsl_fPath,
                    nm_table, surfix).pipeline()
