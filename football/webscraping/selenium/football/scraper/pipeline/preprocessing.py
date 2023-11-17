"""Preprocessing module"""
from gestion_db import Admin
from dict_db import Description
import os

import pandas as pd
import pymysql


class Preprocessing(Admin):
    """Clean the data before storage"""

    def __init__(self, lig_id):
        super().__init__(lig_id)
        self.lig_id = lig_id
        self.connection = pymysql.connect(
                            host='localhost',
                            user='hh',
                            passwd=os.environ.get('DB_PWD'),
                            database='football')

    def fixture_preprocessing(self, fixture):
        df = pd.DataFrame(fixture, columns=['journée', 'date_time',
                                              'home_team', 'away_team'])
        df['date_time'] = pd.to_datetime(df['date_time'],
                                         format='%d.%m.%Y %H:%M')
        with self.connection.cursor() as cur:
            try:
                cols = "`,`".join([str(i) for i in df.
                                  columns.tolist()])
                for i, row in df.iterrows():
                    insert_df = (f"INSERT IGNORE INTO {self.lig_id}_fixture\
                (`" + cols + "`) VALUES (" + " %s, " * (len(row) - 1) + " %s)")
                    cur.execute(insert_df, tuple(row))
                self.connection.commit()
            except pymysql.err.ProgrammingError:
                """if tables not found, create them and reinsert the data
                """
                super().create_table(Description.TABLES)
                cols = "`,`".join([str(i) for i in df.
                                  columns.tolist()])
                for i, row in df.iterrows():
                    insert_df = (f"INSERT IGNORE INTO {self.lig_id}_fixture\
                (`" + cols + "`) VALUES (" + " %s, " * (len(row) - 1) + " %s)")
                    cur.execute(insert_df, tuple(row))
                self.connection.commit()

    def summary_preprocessing(self, data, methode='database',
                              file_path=None):
        """Make some preprocess on the data and store them like
        the methode choose, in the database or csv file.


        Args:
            data (list): list contains team and scores ...
            methode (str, optional): the methode to use to store the data.
            Defaults to 'database'.
            file_path (_type_, optional): Defaults to None.
        """
        df = [pd.DataFrame([sublist]) for sublist in data]
        df = pd.concat(df, ignore_index=True)
        numeric_col = ['total_home_team_goal', 'total_away_team_goal']
        for col in df.columns:
            if col in numeric_col:
                df[col] = df[col].astype(int)
        df['global'] = df['total_home_team_goal']+df['total_away_team_goal']
        df['date_time'] = pd.to_datetime(df['date_time'],
                                         format='%d.%m.%Y %H:%M')
        if methode == 'database':
            self.connection.ping(reconnect=True)
            with self.connection.cursor() as cur:
                cols = "`,`".join([str(i) for i in df.
                                  columns.tolist()])
                for i, row in df.iterrows():
                    insert_df = (f"INSERT IGNORE INTO {self.lig_id}_summary\
                (`" + cols + "`) VALUES (" + " %s, " * (len(row) - 1) + " %s)")
                    cur.execute(insert_df, tuple(row))
                self.connection.commit()
        elif methode == 'csv':
            if file_path != None:
                try:
                    old_csv = pd.read_csv(self.file_path)
                    new_csv = pd.concat([df, old_csv], axis=0)
                    new_csv.drop_duplicates(subset=["date_time", "home_team", "away_team"],
                                            keep="last", inplace=True)
                    new_csv.sort_values(by='date_time', ascending=False, inplace=True)
                    new_csv.to_csv(self.file_path, index=False)
                except Exception as err:
                    print(f'{type(err)}')

    def goal_preprocessing(self, goal):
        df = [pd.DataFrame([sublist]) for sublist in goal]
        df = pd.concat(df, ignore_index=True)
        df.columns = ['journée', 'player', 'time_goal', 'team', 'opponent']
        self.connection.ping(reconnect=True)
        with self.connection.cursor() as cur:
            cols = "`,`".join([str(i) for i in df.
                              columns.tolist()])
            for i, row in df.iterrows():
                insert_df = (f"INSERT IGNORE INTO {self.lig_id}_scorer\
            (`" + cols + "`) VALUES (" + " %s, " * (len(row) - 1) + " %s)")
                cur.execute(insert_df, tuple(row))
            self.connection.commit()

    def h2h_preprocessing(self, h2h):
        df = pd.DataFrame(h2h, columns=
                          ['date', 'home_team', 'away_team', 'home_team_goal', 'away_team_goal'])
        df['date'] = pd.to_datetime(df['date'], format='%d.%m.%y')
        self.connection.ping(reconnect=True)
        with self.connection.cursor() as cur:
            cols = "`,`".join([str(i) for i in df.
                              columns.tolist()])
            for i, row in df.iterrows():
                request = (f"INSERT IGNORE INTO {self.lig_id}_h2h\
            (`" + cols + "`) VALUES (" + " %s, " * (len(row) - 1) + " %s)")
                cur.execute(request, tuple(row))
            self.connection.commit()