class Description(object):
    """Description of football database
    All of numeric columns have default value = 0
    All columns are NOT NULL type.
    index[0] means the name of columns, index[1] represent column type
    Other definition :
        int = VARCHAR(int)
        tiU = TINYINT UNSIGNED
        Da = DATE
        De = DECIMAL(3,2)
        dT = DATE_TIME
        pKey = PRIMARY KEY
        fKey = FOREIGN KEY
        cKey = COMPOSITE KEY
        """

    TABLES = {'summary': [('journée', 'tiU',),
                          ('date_time', 'dT'),
                          ('home_team', 30, 'cKey',
                           'date_time home_team away_team'),
                          ('away_team', 30),
                          ('1st_home_team_goal', 'tiU'),
                          ('1st_away_team_goal', 'tiU'),
                          ('total_home_team_goal', 'tiU'),
                          ('total_away_team_goal', 'tiU'),
                          ('global', 'tiU')],

              'fixture': [('journée', 'tiU'),
                          ('date_time', 'dT'),
                          ('home_team', 30, 'cKey',
                           'date_time home_team away_team'),
                          ('away_team', 30)],

              'scorer': [('journée', 'tiU'),
                         ('player', 30),
                         ('time_goal', 'tiU', 'cKey',
                          'journée player time_goal'),
                         ('team', 30),
                         ('opponent', 30)],

              'stats': [('journée', 'tiU'),
                        ('home_team', 30),
                        ('away_team', 30, 'cKey',
                         'journée home_team away_team'),
                        ('home_team_shoot', 'tiU'),
                        ('away_team_shoot', 'tiU'),
                        ('home_team_acc_shoot', 'tiU'),
                        ('away_team_acc_shoot', 'tiU'),
                        ('home_team_corner', 'tiU'),
                        ('away_team_corner', 'tiU'),
                        ('home_team_yellow_card', 'tiU'),
                        ('away_team_yellow_card', 'tiU'),
                        ('home_team_exg', 'tiU'),
                        ('away_team_exg', 'tiU')],

              'h2h': [('date', 'Da'),
                      ('home_team', 30),
                      ('away_team', 30, 'cKey',
                       'date home_team away_team'),
                      ('home_team_goal', 'tiU'),
                      ('away_team_goal', 'tiU')]}