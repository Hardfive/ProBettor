from pathlib import Path
import os
import subprocess

database = 'football'
user = 'hh'
passwd = os.environ.get('DB_PWD')

current_dir = Path.cwd()
dump_dir = current_dir.parent.parent.parent / "data" / "database_dump"
os.chdir(dump_dir)
subprocess.call(f'mysqldump -u {user} -p{passwd} {database} > {database}.sql', shell=True)