from dict_db import Description
import os

import pymysql


class Admin(Description):
    """Contains methode for handle database when error
    occurs during preprocessing"""

    PWD = os.environ.get('DB_PWD')
    USER = 'hh'
    DATABASE = 'football'
    SAVE_POINT = '/home/hhanstein/Projects/IA/sports/football/data/collect\
/2022_23/'

    def __init__(self, surfix):
        super().__init__()
        self.surfix = surfix
        self.connection = pymysql.connect(
            host='localhost',
            user=Admin.USER,
            passwd=Admin.PWD,
            database=Admin.DATABASE)

    def create(self, tables, views):
        """Create tables, views and triggers describe in db_dict
         when it does not exists yet."""
        with self.connection.cursor() as cur:
            for table in tables:
                req = f"CREATE TABLE IF NOT EXISTS {table+self.surfix}\
 ("
                for descr in tables[table]:
                    col_name = descr[0]
                    typeCol = descr[1]
                    if typeCol == 'tiU':
                        typeCol = 'TINYINT UNSIGNED NOT NULL DEFAULT 0, '
                    elif typeCol == 'De':
                        typeCol = 'DECIMAL(2,1) NOT NULL DEFAULT 0, '
                    elif typeCol == 'dT':
                        typeCol = 'DATETIME NOT NULL, '
                    else:
                        typeCol = 'VARCHAR(%s) NOT NULL, ' % typeCol
                    req = req + "%s %s" % (col_name, typeCol)
                    if 'pKey' in descr[:]:
                        if 'fKey' in descr[:]:
                            fk = "fk_"+table+"_"+descr[5]+self.surfix
                            rf = descr[5]+self.surfix+"("+descr[0]+")"
                            req = req + "PRIMARY KEY (%s), \
CONSTRAINT %s FOREIGN KEY (%s) REFERENCES %s ON DELETE CASCADE ON UPDATE CASCADE, "\
    % (descr[0], fk, descr[0], rf)
                        else:
                            req = req + " PRIMARY KEY (%s), " % (descr[0])
                    elif 'cKey' in descr[:]:
                        if 'fKey' in descr[:]:
                            fk = "fk_"+table+"_"+descr[5]+self.surfix
                            rf = descr[5]+self.surfix+"(team)"
                            req = req + "PRIMARY KEY (%s, %s, %s), \
CONSTRAINT %s FOREIGN KEY (%s) REFERENCES %s ON DELETE CASCADE ON UPDATE \
CASCADE, " % ("home_team", "away_team", "date_time", fk, descr[0], rf)
                        else:
                            req = req + "PRIMARY KEY (%s, %s, %s), " % \
                                ("date_time", "home_team", "away_team")
                    elif 'fKey' in descr[:] and descr[0] == 'home_team':
                        fk = "fk_"+table+"_"+descr[4]+self.surfix
                        rf = descr[5]+self.surfix+"(team)"
                        req = req + "PRIMARY KEY (%s, %s, %s), \
CONSTRAINT %s FOREIGN KEY (%s) REFERENCES %s ON DELETE CASCADE ON UPDATE \
CASCADE, " % ("home_team", "away_team", "date_time", fk, descr[0], rf)
                req = req[:-2] + ")"
                # cur.execute(req)
            for view in views:
                req = f"CREATE OR REPLACE VIEW {view+self.surfix} AS\
 SELECT ROW_NUMBER() OVER (ORDER BY total_avg DESC) AS ranking, "
                for descr in views[view]:
                    col_name = descr
                    req = req + "%s, " % col_name
                req = req[:-2] + " FROM %s" % view[2:]+self.surfix
                print(f"{req}\n")
                # cur.execute(req)
            triggers = super().create_trigger()
            for trigger in triggers:
                print(trigger)
                # cur.execute(trigger)
            # self.connection.commit()

    def reset(self):
        pass


if __name__ == "__main__":
    test = Admin('Sl')
    test.create(Description.TABLES, Description.VIEWS)
