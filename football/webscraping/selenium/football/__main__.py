from pathlib import Path
import urllib.request
import time
import os
import random
import subprocess

league_path = Path(__file__).parent / 'league'
os.chdir(league_path)
try:
    urllib.request.urlopen("http://flashscore.com")
except Exception:
    print("Connection failed\nTry check it.")
else:
    for file in os.listdir(league_path):
        f = os.path.join(league_path, file)
        if file.endswith('.py') and file != "__init__.py":
            try:
                print(f"Runing {file}")
                subprocess.call("python %s" % file, 
                                shell=True)
                time.sleep(random.randrange(3, 5))
            except BaseException as err:
                print(err)
    os.chdir(Path.cwd())
    subprocess.call("python db_dump.py", shell=True)