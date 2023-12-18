import pandas as pd 
import pymysql
import os
import numpy as np  
import sys
from joblib import load

class svcClassifier(object):
    def __init__(self, home_team, away_team, league):
        self.home_team = home_team
        self.away_team = away_team
        self.league = league
        self.estimator = load('./SVC_clf.joblib')
        self.conn = pymysql.connect(
                host='localhost',
                user='hh',
                password=os.environ.get('DB_PWD'),
                database='football')

    def input_processing(self):
        with self.conn.cursor() as cur:
            request1 = f'SELECT AVG(`total_home_team_goal`) FROM {self.league}_summary\
 WHERE `home_team`= "%s"' % self.home_team
            cur.execute(request1)
            avg_home_team_scored = cur.fetchone()
            request2 = f'SELECT AVG(`total_away_team_goal`) FROM {self.league}_summary\
 WHERE `away_team`= "%s"' % self.away_team
            cur.execute(request2)
            avg_away_team_conceded = cur.fetchone()
        return avg_home_team_scored[0], avg_away_team_conceded[0]

    def predict_with_confidence(self, confidence_threshold=0.6):
        feature1, feature2 = self.input_processing()
        X = np.array([feature1, feature2])
        reshaped_X = X.reshape(1, -1)
        probabilities = self.estimator.predict_proba(reshaped_X)
        print(probabilities)
        predicted_class = self.estimator.predict(reshaped_X)
        # confidence = probabilities[0][predicted_class[0]]

        # if confidence > confidence_threshold:
        print(f"Classe prédite: {predicted_class[0]}")
        print(f"probabilité over 2.5: {probabilities[0][0]}, proabilité under 2.5: {probabilities[0][1]}")
        # else:
            # print("Pari trop risqué")


if __name__ == '__main__':
    probettor = svcClassifier(sys.argv[1], sys.argv[2], sys.argv[3])
    probettor.predict_with_confidence()