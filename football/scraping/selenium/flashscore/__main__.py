import urllib.request
import time
import os
import subprocess

cur_dir = os.getcwd()
path = "/home/hhanstein/Projects/IA/probettor/football/scraping/selenium/\
flashscore/league/"
os.chdir(path)
try:
    urllib.request.urlopen("http://flashscore.com")
except Exception:
    print("Connection failed\nTry check it.")
else:
    for file in os.listdir(path):
        f = os.path.join(path, file)
        if file.endswith('.py') and file != "__init__.py":
            try:
                print(f"Runing {file}")
                subprocess.call("python %s" % file, 
                                shell=True)
                time.sleep(3)
            except BaseException as err:
                print(err)
    os.chdir(cur_dir)
    subprocess.call('rm -r geckodriver.log', shell=True)
