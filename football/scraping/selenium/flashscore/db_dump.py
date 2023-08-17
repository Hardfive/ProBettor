#!/usr/bin/python3
import pymysql
import os
import sys
import subprocess

pwd = os.environ.get('DB_PWD')
connexion = pymysql.connect(
        host='localhost',
        database='football',
        user='hh',
        passwd=pwd
        )

# il faut que je code en dur mes chemins de fichier
dump_dir = "/home/hhanstein/Projects/IA/probettor/football/data/event/sql_dump/"
os.chdir(dump_dir)

def dump_database():
    """
    Fonction qui prend en paramètre le nom d'une base d'une donnée,
    et le nom du fichier de sauvegarde. 
    et éffectue une copie de la base de donnée
    """
    with connexion.cursor() as cur:
        cur.execute('SHOW DATABASES')
        databases = cur.fetchall()
        for db in databases:
            print(db[0])
        db_dump = input("select the database to dump: ")
        file_name = input("enter the backup file name: ")
        subprocess.call(f'mysqldump -u hh -p{pwd} {db_dump} > {file_name}', shell=True)

dump_database()
