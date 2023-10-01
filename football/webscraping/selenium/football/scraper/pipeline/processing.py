"""Preprocessing module"""
from gestion_db import Admin
from dict_db import Description
import os

import pandas as pd
import pymysql


class Preprocessing(Admin):
    """Manipulate and clean the data before storage"""

    def __init__(self, lig_id):
        super().__init__(lig_id)
        self.lig_id = lig_id
        self.connection = pymysql.connect(
                            host='localhost',
                            user='hh',
                            passwd=os.environ.get('DB_PWD'),
                            database='football')

    def fixture_processing(self, fixture):
        """Create a dataframe of the data collected
        set the date format and store it into the db. 
        """
        df = pd.DataFrame([fixture], columns=['journée', 'date_time',
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

    def summary_processing(self, summary):
        """Create new feature
        store the dataframe into the db.
        """
        df = pd.DataFrame(summary)
        numeric_col = ['journée', 'total_home_team_goal',
                       'total_away_team_goal', '1st_home_team_goal',
                       '1st_away_team_goal']
        for col in df.columns:
            if col in numeric_col:
                df[col] = df[col].astype(int)
        df['date_time'] = pd.to_datetime(df['date_time'],
                                         format='%d.%m.%Y %H:%M')
        df['2nd_home_team_goal'] = df['total_home_team_goal']-df['1st_\
home_team_goal']
        df['2nd_away_team_goal'] = df['total_away_team_goal']-df['1st_\
away_team_goal']
        df['1st_total_goal'] = df['1st_home_team_goal']+df['1st_\
away_team_goal']
        df['2nd_total_goal'] = df['2nd_home_team_goal']+df['2nd_\
away_team_goal']
        df['global'] = df['total_home_team_goal']+df['total_away_team_goal']
        df = df[['journée', 'date_time', 'home_team', 'away_team',
                 '1st_home_team_goal', '1st_away_team_goal', '1st_total_goal',
             '2nd_home_team_goal', '2nd_away_team_goal', '2nd_total_goal',
             'total_home_team_goal', 'total_away_team_goal', 'global']]
        with self.connection.cursor() as cur:
            cols = "`,`".join([str(i) for i in df.
                              columns.tolist()])
            for i, row in df.iterrows():
                insert_df = (f"INSERT IGNORE INTO {self.lig_id}_summary\
            (`" + cols + "`) VALUES (" + " %s, " * (len(row) - 1) + " %s)")
                cur.execute(insert_df, tuple(row))
            self.connection.commit()

    def goal_processing(self, goal):
        """Store incidents score.
        """
        df = pd.DataFrame(goal,
                          columns=['journée', 'player', 'time_goal',
                                   'team', 'opponent'])
        with self.connection.cursor() as cur:
            cols = "`,`".join([str(i) for i in df.
                              columns.tolist()])
            for i, row in df.iterrows():
                insert_df = (f"INSERT IGNORE INTO {self.lig_id}_scorer\
            (`" + cols + "`) VALUES (" + " %s, " * (len(row) - 1) + " %s)")
                cur.execute(insert_df, tuple(row))
            self.connection.commit()

    def stat_processing(self, stats):
        """
        Store match statistics.
        """
        df = pd.DataFrame(stats)
        df.fillna(0, inplace=True)
        with self.connection.cursor() as cur:
            cols = "`,`".join([str(i) for i in df.
                              columns.tolist()])
            for i, row in df.iterrows():
                insert_df = (f"INSERT IGNORE INTO {self.lig_id}_stats\
            (`" + cols + "`) VALUES (" + " %s, " * (len(row) - 1) + " %s)")
                cur.execute(insert_df, tuple(row))
            self.connection.commit()

    def h2h_processing(self, h2h):
        """
        Store head to head data.
        """
        df = pd.DataFrame([h2h], columns=['date', 'home_team',
                          'away_team', 'home_team_goal', 'away_team_goal'])
        df['date'] = pd.to_datetime(df['date'], format='%d.%m.%y')
        with self.connection.cursor() as cur:
            cols = "`,`".join([str(i) for i in df.
                              columns.tolist()])
            for i, row in df.iterrows():
                request = (f"INSERT IGNORE INTO {self.lig_id}_h2h\
            (`" + cols + "`) VALUES (" + " %s, " * (len(row) - 1) + " %s)")
                cur.execute(request, tuple(row))
            self.connection.commit()
            # self.connection.close()
