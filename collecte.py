"""ce script gratte les resultats des matchs et l'enregistre dans un fichier csv.

Description:
Le script ouvre une fenetre dans le navigateur en suivant le lien dans l'url,
recupère les données présentes sur la page, les ajoute au données existant
le tout stocker dans un fichier csv
"""
from selenium import webdriver
from selenium.webdriver.common.by import By
from selenium.webdriver.common.action_chains import ActionChains
from selenium.webdriver.edge.options import Options
import pandas as pd
import csv
import time

options = Options()
options.add_argument("headless")
driver = webdriver.Edge(options = options)
url= 'https://www.flashscore.com/football/france/ligue-1/results/'
driver.get(url)
driver.implicitly_wait(120)
driver.maximize_window()
matchs = driver.find_elements(By.CSS_SELECTOR, 'div.event__match.event__match--static.event__match--twoLine')
dataset = []
#recupere uniquement les 10 matchs de la dernière journée
for match in matchs[:10]:
    data = {}
    date_match = match.find_elements(By.XPATH, './div[2]')
    for dm in date_match:
        data['dateTime'] = dm.text

    home_team = match.find_elements(By.XPATH, './div[3]')
    for ht in home_team:
        data['home'] = ht.text

    away_team =  match.find_elements(By.XPATH, './div[4]')
    for awt in away_team:
        data['away'] = awt.text

    h_goal1st = match.find_elements(By.XPATH, './div[7]')
    for hg1 in h_goal1st:
        data['1st_home'] = hg1.text[1]

    a_goal1st =  match.find_elements(By.XPATH, './div[8]')
    for ag1 in a_goal1st:
        data['1st_away'] = ag1.text[1]

    h_goal =  match.find_elements(By.XPATH, './div[5]')
    for hg in h_goal:
        data['goal_home'] = hg.text
    
    a_goal =  match.find_elements(By.XPATH, './div[6]')
    for ag in a_goal:
        data['goal_away'] = ag.text

    dataset.append(data)
#on crée un dataframe a partir de notre liste et on spécifie le type des colonnes
results = pd.DataFrame(dataset)
results[['1st_away', '1st_home', 'goal_home', 'goal_away']].astype(int)
driver.quit()
#on recupère le contenu du fichier dans un dataframe
chemin = path
df= pd.read_csv(chemin)
#On additionne nos dataframes et on enregistre les modifications dans un fichier.
concatenation = pd.concat([results, df], axis=0)
concatenation.to_csv(path, index=False)
