"""Preprocessing module"""
from gestion_db import Admin
from dict_db import Description
import os

import pandas as pd
import pymysql


class Preprocessing(Admin):
    """Manipulate and clean the data before storage"""

    PWD = os.environ.get('DB_PWD')

    def __init__(self, lig_id):
        super().__init__(lig_id)
        self.lig_id = lig_id
        self.connection = pymysql.connect(
                            host='localhost',
                            user='hh',
                            passwd=Preprocessing.PWD,
                            database='football')

    def fixture_processing(self, fixture):
        """Store fixture data into the database.
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
                    insert_df = (f"INSERT INTO {self.lig_id}_fixture\
                (`" + cols + "`) VALUES (" + " %s, " * (len(row) - 1) + " %s)")
                    cur.execute(insert_df, tuple(row))
                self.connection.commit()
            except pymysql.err.ProgrammingError:
                super().create_table(Description.TABLES)
                super().create_views(Description.VIEWS)
                super().create_triggers()
                cols = "`,`".join([str(i) for i in df.
                                  columns.tolist()])
                for i, row in df.iterrows():
                    insert_df = (f"INSERT INTO {self.lig_id}_fixture\
                (`" + cols + "`) VALUES (" + " %s, " * (len(row) - 1) + " %s)")
                    cur.execute(insert_df, tuple(row))
                self.connection.commit()

    def summary_processing(self, summary):
        """Load results data into a DataFrame
        make différence between colums to create new feature
        store the dataframe into the database.
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
team_away_goal']
        df['2nd_total_goal'] = df['2nd_home_team_goal']+df['2nd_\
away_team_goal']
        df['global'] = df['total_home_team_goal']+df['total_away_team_goal']
        df = df[['round', 'date_time', 'home_team', 'away_team',
                 '1st_home_team_goal', '1st_away_team_goal', '1st_total_goal',
                 '2nd_home_team_goal', '2nd_away_team_goal', '2nd_total_goal',
                 'total_home_team_goal', 'total_away_team_goal', 'global']]
        with self.connection.cursor() as cur:
            table = self.lig_id+"_overall_standing"
            select_sql = f"SELECT team FROM {table}"
            cur.execute(select_sql)
            result = cur.fetchone()
            if result is None:
                teams = pd.concat([df.home_team, df.away_team], axis=0)
                teams = teams.pd.drop_duplicates()
                for i, row in teams.iterrows():
                    insert_teams = (f"INSERT INTO {table}\
                             VALUES (" + " %s, " * (len(row) - 1) + " %s)")
                    cur.execute(insert_teams)
            cols = "`,`".join([str(i) for i in df.
                              columns.tolist()])
            for i, row in df.iterrows():
                insert_df = (f"INSERT INTO {self.lig_id}_summary\
            (`" + cols + "`) VALUES (" + " %s, " * (len(row) - 1) + " %s)")
                cur.execute(insert_df, tuple(row))
            self.connection.commit()

    def goal_processing(self, goal):
        """Store into the database incidents like player who has scored
        and much more about it.
        """
        df = pd.DataFrame(goal,
                          columns=['round', 'player', 'time_goal',
                                   'team', 'opponent'])
        with self.connection.cursor() as cur:
            cols = "`,`".join([str(i) for i in df.
                              columns.tolist()])
            for i, row in df.iterrows():
                insert_df = (f"INSERT INTO {self.lig_id}_scorer\
            (`" + cols + "`) VALUES (" + " %s, " * (len(row) - 1) + " %s)")
                cur.execute(insert_df, tuple(row))
            self.connection.commit()

    def stat_processing(self, stats):
        """
        store match statistics, such as:
        shoot, accurate shoot, cards, and corners
        into the database.
        """
        df = pd.DataFrame(stats)
        df.fillna(0, inplace=True)
        with self.connection.cursor() as cur:
            cols = "`,`".join([str(i) for i in df.
                              columns.tolist()])
            for i, row in df.iterrows():
                insert_df = (f"INSERT INTO {self.lig_id}_stats\
            (`" + cols + "`) VALUES (" + " %s, " * (len(row) - 1) + " %s)")
                cur.execute(insert_df, tuple(row))
            self.connection.commit()

    def h2h_processing(self, h2h):
        """
        Handle head to head data between the teams
        store the data into h2h table of the dataset.
        """
        df = pd.DataFrame([h2h], columns=['date', 'home_team',
                          'away_team', 'home_team_goal', 'away_team_goal'])
        df['date'] = pd.to_datetime(df['date'], format='%d.%m.%y')
        with self.connection.cursor() as cur:
            cols = "`,`".join([str(i) for i in df.
                              columns.tolist()])
            for i, row in df.iterrows():
                request = (f"INSERT INTO {self.lig_id}_h2h\
            (`" + cols + "`) VALUES (" + " %s, " * (len(row) - 1) + " %s)")
                cur.execute(request, tuple(row))
            self.connection.commit()
            # self.connection.close()


if __name__ == "__main__":
    lig_id = 'liga'

    # goal_df = pd.read_csv(goal_data)
    # shoot_df = pd.read_csv(shoot_data)
    # script = Preprocessing(lig_id)
    # script.goal_processing(goal_df)
    # script.stat_processing(shoot_df)
