"""
Gestion module contains methods for handle database
"""
from dict_db import Description
import os

import pymysql


class Admin(Description):

    PWD = os.environ.get('DB_PWD')

    def __init__(self, lig_id):
        super().__init__()
        self.lig_id = lig_id
        self.connection = pymysql.connect(
            host='localhost',
            user='hh',
            passwd=Admin.PWD,
            database='football')

    def create_table(self, tables):
        """Create tables describe in Description class
         if it does not exists yet."""
        with self.connection.cursor() as cur:
            for table in tables:
                req = f"CREATE TABLE IF NOT EXISTS {self.lig_id}_{table}\
 ("
                for descr in tables[table]:
                    col_name = descr[0]
                    type_col = descr[1]
                    if type_col == 'tiU':
                        type_col = 'TINYINT UNSIGNED NOT NULL DEFAULT 0, '
                    elif type_col == 'De':
                        type_col = 'DECIMAL(3,2) NOT NULL DEFAULT 0, '
                    elif type_col == 'dT':
                        type_col = 'DATETIME NOT NULL, '
                    elif type_col == 'Da':
                        type_col = 'DATE NOT NULL, '
                    else:
                        type_col = 'VARCHAR(%s) NOT NULL, ' % type_col
                    req = req + "%s %s" % (col_name, type_col)
                    if 'pKey' in descr[:]:
                        if 'fKey' in descr[:]:
                            fk = "fk__"+table+"__"+descr[4]+"_"+self.lig_id
                            rf = self.lig_id+"_"+descr[4]+"("+descr[0]+")"
                            req = req + "PRIMARY KEY (%s), \
CONSTRAINT %s FOREIGN KEY (%s) REFERENCES %s ON DELETE CASCADE ON UPDATE CASCADE, "\
    % (descr[0], fk, descr[0], rf)
                        else:
                            req = req + " PRIMARY KEY (%s), " % (descr[0])
                    if 'cKey' in descr[:]:
                        keys = descr[3].split()
                        req = req + "PRIMARY KEY (%s, %s, %s), \
" % (keys[0], keys[1], keys[2])
                req = req[:-2] + ")"
                # print(f"{req}\n")
                cur.execute(req)
            self.connection.commit()


if __name__ == "__main__":
    test = Admin('l2')
    test.create_table(Description.TABLES)
