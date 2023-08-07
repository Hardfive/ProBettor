import os
import pandas as pd
import pymysql
import numpy as np
from sklearn.model_selection import train_test_split
from sklearn.impute import SimpleImputer
from sklearn.compose import make_column_transformer
from sklearn.pipeline import make_pipeline
from sklearn.ensemble import RandomForestClassifier
from sklearn.tree import DecisionTreeClassifier
from sklearn.neighbors import KNeighborsClassifier
from sklearn.metrics import f1_score, confusion_matrix, classification_report
from sklearn.model_selection import learning_curve
from sklearn.linear_model import SGDClassifier
from sklearn.feature_selection import VarianceThreshold, SelectKBest, SelectFromModel, chi2, f_classif

# pseudo code :
# charger les données
# les fait passer une série de transformation
# entrainer le modèle et calculer le score.


class Model(object):

    pwd = os.environ.get('DB_PWD')

    def __init__(self, df):
        self.short_dataset = pd.DataFrame()
        self.df = df
        self.connection = pymysql.connect(
                host='localhost',
                user='hh',
                password=Model.pwd,
                database='test'
                )

    def model_training(self):
        table = 'global_overall_ds'
        table2 = 'global_ds'
        try:
            with self.connection.cursor() as cur:
                sql_request = f"SELECT * FROM {table}"
                cur.execute(sql_request)
                columns = cur.description
                # data = cur.fetchall()
                data = [{columns[index][0]: column for index, column in
                         enumerate(value)} for value in cur.fetchall()]
                sql_request = f"SELECT * FROM {table2}"
                cur.execute(sql_request)
                columns = cur.description
                # data = cur.fetchall()
                data2 = [{columns[index][0]: column for index, column in
                         enumerate(value)} for value in cur.fetchall()]
        except Exception as err:
            print(f"{err}")
        else:
            dataset = pd.DataFrame(data)
            labels_name = [0, 1]
            dataset['label'] = pd.cut(x=dataset['global'],
                                      bins=[min(dataset['global']), 2,
                                      max(dataset['global'])],
                                      labels=labels_name, include_lowest=True)
            self.short_dataset = dataset[dataset['mp'] > 5 and dataset['mp'] > 10]

            x = self.short_dataset.drop(['date_time', 'mp', 'home_team',
                                         'away_team', 'label', 'global'], axis=1)
            y = self.short_dataset['label']
            x_train, x_test, y_train, y_test = train_test_split(x, y,
                                                                test_size=0.2,
                                                                random_state=0)
            # NaN = []
            # target_pipeline = make_pipeline(LabelEncoder())
            # NaN_pipeline = make_pipeline(SimpleImputer(strategy = 'constant'))
            # feature_pipeline = make_pipeline(MinMaxScaler())
            # preprocessor = make_column_transformer((NaN_pipeline, NaN))
            estimateurs = [DecisionTreeClassifier(random_state=1),
                           RandomForestClassifier(random_state=1),
                           KNeighborsClassifier(n_neighbors=4),
                           SGDClassifier(random_state=1)]
            for estimateur in estimateurs:
                # model = make_pipeline(preprocessor, estimateur)
                model = estimateur
                model.fit(x_train, y_train)
                print(f"score {estimateur.__class__.__name__}: \
    {model.score(x_test, y_test)}")
                # y_pred = model.predict(x_test)
                # print(confusion_matrix(y_test, y_pred))
                # print(classification_report(y_test, y_pred))


df = pd.read_csv('/home/hhanstein/Projects/IA/probettor/football/data/event\
/2022_23/results/ligue1.csv')
model = Model(df).fill_database()
