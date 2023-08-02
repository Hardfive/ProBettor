"""Preprocessing module"""
from gestion_db import Admin
from dict_db import Description
import os

import pandas as pd
import pymysql


class Preprocessing(Admin):

    path = "/home/hhanstein/Projects/IA/probettor/football/data/event\
/2022_23/results/ligue1.csv"
    PWD = os.environ.get('DB_PWD')

    def __init__(self, rsl_fPath, nm_table, surfix):
        super().__init__(surfix)
        self.rsl_fPath = rsl_fPath
        self.nm_table = "results"
        self.surfix = surfix
        self.connection = pymysql.connect(
                            host='localhost',
                            user='hh',
                            passwd=Preprocessing.PWD,
                            database='test_foot')

    def processing(self, df):
        """Use existing columns to create new features
        rename and store them into database.
        return : dataframe.
        """
        """df = pd.DataFrame(df)
        numeric_col = ['mp', 'total_home_goal', 'total_away_goal',
                       '1st_home_goal', '1st_away_goal']
        for col in df.columns:
            if col in numeric_col:
                df[col] = df[col].astype(int)
        df['date_time'] = ["2023-"+row[3:5]+"-"+row[:2]+" "+row[7:]
                           for row in df['date_time']]
        df['2nd_home_goal'] = df['total_home_goal']-df['1st_home_goal']
        df['2nd_away_goal'] = df['total_away_goal']-df['1st_away_goal']
        df['1st_total_goal'] = df['1st_home_goal']+df['1st_away_goal']
        df['2nd_total_goal'] = df['2nd_home_goal']+df['2nd_away_goal']
        df['global'] = df['total_home_goal']+df['total_away_goal']
        df = df[['mp', 'date_time', 'home_team', 'away_team',
                 '1st_home_goal', '1st_away_goal', '1st_total_goal',
                 '2nd_home_goal', '2nd_away_goal', '2nd_total_goal',
                 'total_home_goal', 'total_away_goal', 'global']]
        old_csv = pd.read_csv(self.rsl_fPath)
        new_csv = pd.concat([df, old_csv], axis=0)
        # remove duplicates if there are
        new_csv.drop_duplicates(subset=["date_time", "home_team", "away_team"],
                                keep="last", inplace=True)
        new_csv.sort_values(by='date_time', ascending=False, inplace=True)
        new_csv.to_csv(self.rsl_fPath, index=False)"""
        df = pd.DataFrame(df)
        df = df.head(20)
        with self.connection.cursor() as cur:
            try:
                cols = "`,`".join([str(i) for i in df.
                                  columns.tolist()])
                for i, row in df.iterrows():
                    insert_df = (f"INSERT INTO {self.nm_table}\
             (`" + cols + "`) VALUES (" + " %s, " * (len(row) - 1) + " %s)")
                cur.execute(insert_df, tuple(row))
                self.connection.commit()
            except pymysql.err.ProgrammingError as err:
                print(f'{err}, type{err}')
                """super().create(self, Description.TABLES, Description.VIEWS)
                teams = pd.concat([df.home_team, df.away_team], axis=0)
                teams = teams.pd.drop_duplicates()
                for i, row in teams.iterrows():
                    table = "homeGlobal_stats" + self.nm_table[12:]
                    insert_teams = (f"INSERT INTO {table}\
                                 VALUES (" + " %s, " * (len(row) - 1) + " %s)")
                    cur.execute(insert_teams)
                for i, row in df.iterrows():
                    insert_df = (f"INSERT INTO {self.nm_table}\
             (`" + cols + "`) VALUES (" + " %s, " * (len(row) - 1) + " %s)")
                    cur.execute(insert_df, tuple(row))
                self.connection.commit()"""
            except pymysql.err.IntegrityError as err:
                print(f"{err} IntegrityError")
            finally:
                self.connection.close()


if __name__ == "__main__":
    path = "/home/hhanstein/Projects/IA/probettor/football/data/event\
/2022_23/results/ligue1.csv"
    df = pd.read_csv(path)
    script = Preprocessing(path, "home_resultsL1", "L1")
    script.processing(df)
