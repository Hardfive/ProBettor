"""Preprocessing module"""
from gestion_db import Admin
from dict_db import Description
import os

import pandas as pd
import pymysql


class Preprocessing(Admin):

    path = "/home/hhanstein/Projects/IA/probettor/football/data/event\
/2022_23/results/test"
    PWD = os.environ.get('DB_PWD')

    def __init__(self, rsl_fPath, nm_table, surfix):
        super().__init__(surfix)
        self.rsl_fPath = rsl_fPath
        self.nm_table = nm_table
        self.surfix = surfix
        self.connection = pymysql.connect(
                            host='localhost',
                            user='hh',
                            passwd=Preprocessing.PWD,
                            database='football')

    def processing(self, df):
        """Use existing columns to create new features
        rename and store them into database.
        return : dataframe.
        """
        df = pd.DataFrame(df)
        numeric_col = ['mp', 'home_goal', 'away_goal', '1st_home_goal',
                       '1st_away_goal']
        for col in df.columns:
            if col in numeric_col:
                df[col] = df[col].astype(int)
        df['date_time'] = ["2023-"+row[3:5]+"-"+row[:2]+" "+row[7:]
                           for row in df['date_time']]
        df['2nd_home_goal'] = df['home_goal']-df['1st_home_goal']
        df['2nd_away_goal'] = df['away_goal']-df['1st_away_goal']
        df['1st_goal'] = df['1st_home_goal']+df['1st_away_goal']
        df['2nd_goal'] = df['2nd_home_goal']+df['2nd_away_goal']
        df['global'] = df['home_goal']+df['away_goal']
        home_dict = {
            '1st_home_goal': '1st_score',
            '1st_away_goal': '1st_concede',
            '1st_goal': '1st_global',
            '2nd_home_goal': '2nd_score',
            '2nd_away_goal': '2nd_concede',
            '2nd_goal': '2nd_global',
            'home_goal': 'total_score',
            'away_goal': 'total_concede',
        }
        df = df[['mp', 'date_time', 'home_team', 'away_team',
                 '1st_home_goal', '1st_away_goal', '1st_goal',
                 '2nd_home_goal', '2nd_away_goal', '2nd_goal',
                 'home_goal', 'away_goal', 'global']]
        df.rename(columns=(home_dict), inplace=True)
        old_csv = pd.read_csv(self.rsl_fPath)
        new_csv = pd.concat([df, old_csv], axis=0)
        # remove duplicates if there are any
        new_csv.drop_duplicates(subset=["date_time", "home_team", "away_team"],
                                keep="last", inplace=True)
        new_csv.sort_values(by='date_time', ascending=False, inplace=True)
        new_csv.to_csv(self.rsl_fPath, index=False)
        """with self.connection.cursor() as cur:
            try:
                cols = "`,`".join([str(i) for i in df.
                                  columns.tolist()])
                for i, row in df.iterrows():
                    insert_df = (f"INSERT INTO {self.nm_table}\
             (`" + cols + "`) VALUES (" + " %s, " * (len(row) - 1) + " %s)")
                    cur.execute(insert_df, tuple(row))
                self.connection.commit()
            except pymysql.err.ProgrammingError:
                super().create(self, Description.TABLES, Description.VIEWS)
                teams = pd.concat([df.home_team, df.away_team], axis=0)
                teams = teams.pd.drop_duplicates()
                for i, row in teams.iterrows():
                    table = homeGlobal_stats + self.nm_table[12:]
                    insert_teams = (f"INSERT INTO {table}\
                                 VALUES (" + " %s, " * (len(row) - 1) + " %s)")
                    cur.execute(insert_teams)
                for i, row in df.iterrows():
                    insert_df = (f"INSERT INTO {self.nm_table}\
             (`" + cols + "`) VALUES (" + " %s, " * (len(row) - 1) + " %s)")
                    cur.execute(insert_df, tuple(row))
                self.connection.commit()
            except pymysql.err.IntegrityError as err:
                print(f"{err} IntegrityError")
            finally:
                self.connection.close()"""
