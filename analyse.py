# -*- coding: utf-8 -*-
"""
Spyder Editor

Ceci est un script, il a pour objectif de traiter des données les sauvegarder et afficher des graphiques pour une meilleur comprehension
Description:
    il commence par recuperer le fichier contenant les données, le charge dans un df 
    effectue des opérations entre différentes colonnes pour en tirer de nouvelles données
    renomme les colonnes traités et ajoute de nouvelles colonnes a notre tableau
    affiche des graphiques
    puis finalement enregistre les modifications dans un fichier.
"""

import pandas as pd
import numpy as np

#On import le fichier dont le contenue est affecté dans df 
path=r"C:\Users\hhdur\DataGoal\collecte\Ligues2022_23\Ligue1"
df=pd.read_csv(path)
#on utilise la colonne dateTime en tant qu'index de notre tableau
df.set_index('dateTime', inplace=True)
#on opère sur les colonnes et on les renommes
df['goal_home']=df['goal_home']-df['1st_home']
df['goal_away']=df['goal_away']-df['1st_away']
df.rename(columns=({'goal_home':'2st_home'}), inplace=True)
df.rename(columns=({'goal_away':'2st_away'}), inplace=True)
#on ajoute de nouvelles colonnes
df['goal_home']=df['1st_home']+df['2st_home']
df['goal_away']=df['1st_away']+df['2st_away']
df['goal']=df['goal_home']+df['goal_away']
#on regroupe les données dans des bacs
bins=np.linspace(min(df['goal']), max(df['goal']),4)
group_names=['under 2,5', 'over 2,5', 'over 5,5']
df['goal_binned']=pd.cut(df["goal"], bins,labels=group_names, include_lowest=True)
#on copie notre df dans nos variables
df_home=df.copy()
df_away=df.copy()
#on crée un dict contenant old and new values 
dict_home = {'1st_home':'1st_scored',
'1st_away':'1st_conceded',
'2st_home':'2st_scored',
'2st_away':'2st_conceded',
'goal_home':'goal_scored',
'goal_away':'goal_conceded'
}
dict_away = {'1st_away':'1st_scored',
'1st_home':'1st_conceded',
'2st_away':'2st_scored',
'2st_home':'2st_conceded',
'goal_home':'goal_scored',
'goal_away':'goal_conceded'
}
#rename old values by new values
df_home.rename(columns=(dict_home), inplace=True)
df_away.rename(columns=(dict_away), inplace=True)
#on visualise les resultats
df_home.groupby('home')[['1st_scored','1st_conceded', '2st_scored', '2st_conceded']].mean().plot.bar(rot=66, legend=True, figsize=(13,7))
df_home.groupby('home')[['goal_scored', 'goal_conceded']].mean().plot.bar(rot=66, legend=True, figsize=(13,7))
df_away.groupby('away')[['1st_scored','1st_conceded', '2st_scored', '2st_conceded']].mean().plot.bar(rot=66, legend=True, figsize=(13,7))
df_away.groupby('away')[['goal_scored', 'goal_conceded']].mean().plot.bar(rot=66, legend=True, figsize=(13,7))
#on enregistre les modifications dans un fichier csv
df.to_csv(path)
