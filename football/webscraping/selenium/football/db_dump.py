from pathlib import Path
import os
import subprocess

pwd = os.environ.get('DB_PWD')
database = 'football'
user = 'hh'
passwd = pwd

current_dir = Path.cwd()
dump_dir = current_dir.parent.parent.parent / "data" / "database_dump"
os.chdir(dump_dir)
subprocess.call(f'mysqldump -u {user} -p{pwd} {database} > {database}.sql', shell=True)