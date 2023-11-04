import pymysql
import os

conn = pymysql.connect(
    host='localhost',
    database='football',
    user='hh',
    passwd=os.environ.get('DB_PWD')
)

with conn.cursor() as cur:
    cur.execute("show triggers")
    triggers_name = [row[0] for row in cur.fetchall()]
    for trigger_name in triggers_name:
        cur.execute(f"DROp TRIGGER {trigger_name}")
    conn.commit()