from ligue1 import Process

fix_url = ('https://www.flashscore.com/football/italy/serie-a/\
fixtures/')
fix_fPath = ("/home/hhanstein/Projects/IA/probettor/football/data/event\
/2022_23/fixtures/serie_a.txt")
rsl_url = ('https://www.flashscore.com/football/italy/serie-a/\
results/')
rsl_fPath = ("/home/hhanstein/Projects/IA/probettor/football/data/event\
/2022_23/results/serie_a.csv")
nm_table = "home_resultsSa"
surfix = 'Sa'

my_spider = Process(fix_url, fix_fPath, rsl_url, rsl_fPath,
                    nm_table, surfix).pipeline()
