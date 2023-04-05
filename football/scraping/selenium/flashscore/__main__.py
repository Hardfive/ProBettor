import urllib.request
import time
import os
import subprocess

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
                process = subprocess.run(["python", file],
                                         capture_output=True,
                                         text=True, check=True)
                print(f"{file}, {process.stdout}")
                time.sleep(3)
            except BaseException:
                print(f"{file}, {process.stderr}")
    subprocess.call('rm geckodriver.log', shell=True)
