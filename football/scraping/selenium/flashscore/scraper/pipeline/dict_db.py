class Description(object):
    """Description of database's tables
    All of numeric columns are a default value = zero
    All columns are NOT NULL type.
    index[0] means the name of columns, index[1] represent column type
    Other definition :
        int = VARCHAR(int)
        tiU = TINYINT UNSIGNED
        De = DECIMAL
        pKey = PRIMARY KEY
        fKey = FOREIGN KEY
        """

    TABLES = {'homeGlobal_stats': [('team', 30, 'team name', 'pKey'),
                                   ('total_sum', 'tiU', 'sum goal'),
                                   ('total_avg', 'De', 'average goal'),
                                   ('total_max', 'tiU', 'maximal goal'),
                                   ('total_min', 'tiU', 'minimal goal'),
                                   ('total_btts', 'tiU',
                                    '% events with goal of two sides')],

              'homeScore_stats': [('team', 30, 'team name', 'pKey', 'fKey',
                                   'homeGlobal_stats', 'team'),
                                  ('total_sum', 'tiU', 'sum goal'),
                                  ('total_avg', 'De', 'average goal'),
                                  ('total_max', 'tiU', 'maximal goal'),
                                  ('total_min', 'tiU', 'minimal goal'),
                                  ('total_wSc', 'tiU',
                                   '% events without scoring')],

              'homeConcede_stats': [('team', 30, 'team name', 'pKey', 'fKey',
                                     'homeGlobal_stats', 'team'),
                                    ('total_sum', 'tiU', 'sum goal'),
                                    ('total_avg', 'De', 'average goal'),
                                    ('total_max', 'tiU', 'maximal goal'),
                                    ('total_min', 'tiU', 'minimal goal'),
                                    ('total_clS', 'tiU',
                                     '% events avec clean sheet')],

              'awayGlobal_stats': [('team', 30, 'team name', 'pKey'),
                                   ('total_sum', 'tiU', 'sum goal'),
                                   ('total_avg', 'De', 'average goal'),
                                   ('total_max', 'tiU', 'maximal goal'),
                                   ('total_min', 'tiU', 'minimal goal'),
                                   ('total_btts', 'tiU',
                                    '% events avec buts des deux team')],


              'awayScore_stats': [('team', 30, 'team name', 'pKey', 'fKey',
                                   'awayGlobal_stats', 'team'),
                                  ('total_sum', 'tiU', 'sum goal'),
                                  ('total_avg', 'De', 'average goal'),
                                  ('total_max', 'tiU', 'maximal goal'),
                                  ('total_min', 'tiU', 'minimal goal'),
                                  ('total_wSc', 'tiU',
                                   '% events without scoring')],

              'awayConcede_stats': [('team', 30, 'team name', 'pKey', 'fKey',
                                     'awayGlobal_stats', 'team'),
                                    ('total_sum', 'tiU', 'sum goal'),
                                    ('total_avg', 'De', 'average goal'),
                                    ('total_max', 'tiU', 'maximal goal'),
                                    ('total_min', 'tiU', 'minimal goal'),
                                    ('total_clS', 'tiU',
                                     '% events avec clean sheet')],

              'homeGlobal_bins': [('team', 30, 'team name', 'pKey', 'fKey',
                                   'homeGlobal_stats', 'team'),
                                  ('under0_5', 'tiU', '% events with lt one'),
                                  ('under1_5', 'tiU', '% events with lt two'),
                                  ('under2_5', 'tiU',
                                   '% events with lt three'),
                                  ('over0_5', 'tiU', '% events with gt one'),
                                  ('over1_5', 'tiU', '% events with gt two'),
                                  ('over2_5', 'tiU',
                                   '% events with gt three')],

              'homeScore_bins': [('team', 30, 'team name', 'pKey', 'fKey',
                                  'homeGlobal_bins', 'team'),
                                 ('under0_5', 'tiU', '% events with lt one'),
                                 ('under1_5', 'tiU', '% events with lt two'),
                                 ('under2_5', 'tiU',
                                  '% events with lt three'),
                                 ('over0_5', 'tiU', '% events with gt one'),
                                 ('over1_5', 'tiU', '% events with gt two'),
                                 ('over2_5', 'tiU',
                                  '% events with gt three')],

              'homeConcede_bins': [('team', 30, 'team name', 'pKey', 'fKey',
                                    'homeGlobal_bins', 'team'),
                                   ('under0_5', 'tiU',
                                    '% events with lt one'),
                                   ('under1_5', 'tiU',
                                    '% events with lt two'),
                                   ('under2_5', 'tiU',
                                    '% events with lt three'),
                                   ('over0_5', 'tiU', '% events with gt one'),
                                   ('over1_5', 'tiU', '% events with gt two'),
                                   ('over2_5', 'tiU',
                                    '% events with gt three')],

              'awayGlobal_bins': [('team', 30, 'team name', 'pKey', 'fKey',
                                   'awayGlobal_stats', 'team'),
                                  ('under0_5', 'tiU', '% events with lt one'),
                                  ('under1_5', 'tiU', '% events with lt two'),
                                  ('under2_5', 'tiU',
                                   '% events with lt three'),
                                  ('over0_5', 'tiU', '% events with gt one'),
                                  ('over1_5', 'tiU', '% events with gt two'),
                                  ('over2_5', 'tiU',
                                   '% events with gt three')],

              'awayScore_bins': [('team', 30, 'team name', 'pKey', 'fKey',
                                  'awayGlobal_bins', 'team'),
                                 ('under0_5', 'tiU', '% events with lt one'),
                                 ('under1_5', 'tiU', '% events with lt two'),
                                 ('under2_5', 'tiU',
                                  '% events with lt three'),
                                 ('over0_5', 'tiU', '% events with gt one'),
                                 ('over1_5', 'tiU', '% events with gt two'),
                                 ('over2_5', 'tiU',
                                  '% events with gt three')],

              'awayConcede_bins': [('team', 30, 'team name', 'pKey', 'fKey',
                                    'awayGlobal_bins', 'team'),
                                   ('under0_5', 'tiU',
                                    '% events with lt one'),
                                   ('under1_5', 'tiU',
                                    '% events with lt two'),
                                   ('under2_5', 'tiU',
                                    '% events with lt three'),
                                   ('over0_5', 'tiU', '% events with gt one'),
                                   ('over1_5', 'tiU', '% events with gt two'),
                                   ('over2_5', 'tiU',
                                    '% events with gt three')],

              'home_results': [('mp', 'tiU', 'match play'),
                               ('date_time', 'dT', 'events\'s date and time'),
                               ('home_team', 30, 'home team name', 'fKey',
                                'cKey', 'homeGlobal_stats', 'team'),
                               ('away_team', 30, 'away team name'),
                               ('1st_score', 'tiU', 'first time scored'),
                               ('1st_concede', 'tiU', 'first time conceded'),
                               ('1st_global', 'tiU', 'first time goal'),
                               ('2nd_score', 'tiU', 'second time scored'),
                               ('2nd_concede', 'tiU', 'second time conceded'),
                               ('2nd_global', 'tiU', 'second time goal'),
                               ('total_score', 'tiU', 'all goal scored'),
                               ('total_concede', 'tiU', 'all goal conceded'),
                               ('global', 'tiU', 'all goal in the match')],

              'away_results': [('mp', 'tiU', 'match play'),
                               ('date_time', 'dT', 'event\'s date and time'),
                               ('home_team', 30, 'home team name'),
                               ('away_team', 30, 'away team name', 'cKey',
                                'fKey', 'awayGlobal_stats', 'team'),
                               ('1st_score', 'tiU', 'first time scored'),
                               ('1st_concede', 'tiU', 'first time conceded'),
                               ('1st_global', 'tiU', 'first time goal'),
                               ('2nd_score', 'tiU', 'second time scored'),
                               ('2nd_concede', 'tiU', 'second time conceded'),
                               ('2nd_global', 'tiU', 'second time goal'),
                               ('total_score', 'tiU', 'all goal scored'),
                               ('total_concede', 'tiU', 'all goal conceded'),
                               ('global', 'tiU', 'all goal in the match')],

              'global_ranking': [('team', 30, 'name team', 'pKey', 'fKey',
                                  'homeGlobal_stats', 'team'),
                                 ('mp', 'tiU', 'match play'),
                                 ('draw', 'tiU', 'Draw'),
                                 ('lose', 'tiU', 'game lose'),
                                 ('win', 'tiU', 'game win'),
                                 ('sco', 'tiU', 'goal scored'),
                                 ('con', 'tiU', 'goal conceded'),
                                 ('diff', 'tiU', 'difference of goal'),
                                 ('pts', 'tiU', 'points')],

              'homeScore_dataset': [('mp', 'tiU', 'match play'),
                                    ('date_time', 'dT',
                                     'event\'s date and time'),
                                    ('home_team', 30, 'home team name'),
                                    ('away_team', 30, 'away team name',
                                     'cKey'),
                                    ('ranking', 'tiU', 'scored ranking'),
                                    ('total_sum', 'tiU', 'sum goal'),
                                    ('total_avg', 'tiU', 'average goal'),
                                    ('total_max', 'tiU', 'maximal score'),
                                    ('total_min', 'tiU', 'minimal score'),
                                    ('total_wSc', 'tiU',
                                     '% events without scoring'),
                                    ('1st_score', 'tiU',
                                     'first time scored'),
                                    ('1st_concede', 'tiU',
                                     'first time conceded'),
                                    ('1st_global', 'tiU', 'first time goal'),
                                    ('2nd_score', 'tiU',
                                     'second time scored'),
                                    ('2nd_concede', 'tiU',
                                     'second time conceded'),
                                    ('2nd_global', 'tiU', 'second time goal'),
                                    ('total_score', 'tiU',
                                     'all goal scored'),
                                    ('total_concede', 'tiU',
                                     'all goal conceded'),
                                    ('global', 'tiU',
                                     'all goal in the match')],

              'homeConcede_dataset': [('mp', 'tiU', 'match play'),
                                      ('date_time', 'dT',
                                       'event\'s date and time'),
                                      ('home_team', 30, 'home team name'),
                                      ('away_team', 30, 'away team name',
                                       'cKey'),
                                      ('ranking', 'tiU', 'conceded ranking'),
                                      ('total_sum', 'tiU', 'sum goal'),
                                      ('total_avg', 'tiU', 'average goal'),
                                      ('total_max', 'tiU', 'maximal score'),
                                      ('total_min', 'tiU', 'minimal score'),
                                      ('total_clS', 'tiU',
                                       '% events with clean sheet'),
                                      ('1st_score', 'tiU',
                                       'first time scored'),
                                      ('1st_concede', 'tiU',
                                       'first time conceded'),
                                      ('1st_global', 'tiU',
                                       'first time goal'),
                                      ('2nd_score', 'tiU',
                                       'second time scored'),
                                      ('2nd_concede', 'tiU',
                                       'second time conceded'),
                                      ('2nd_global', 'tiU',
                                       'second time goal'),
                                      ('total_score', 'tiU',
                                       'all goal scored'),
                                      ('total_concede', 'tiU',
                                       'all goal conceded'),
                                      ('global', 'tiU',
                                       'all goal in the match')],

              'homeGlobal_dataset': [('mp', 'tiU', 'match play'),
                                     ('date_time', 'dT',
                                      'event\'s date and time'),
                                     ('home_team', 30, 'home team name'),
                                     ('away_team', 30, 'away team name',
                                      'cKey'),
                                     ('ranking', 'tiU', 'score ranking'),
                                     ('total_sum', 'tiU', 'sum goal'),
                                     ('total_avg', 'tiU', 'average goal'),
                                     ('total_max', 'tiU', 'maximal score'),
                                     ('total_min', 'tiU', 'minimal score'),
                                     ('total_btts', 'tiU',
                                      '% events with goal on two sides'),
                                     ('1st_score', 'tiU',
                                      'first time scored'),
                                     ('1st_concede', 'tiU',
                                      'first time conceded'),
                                     ('1st_global', 'tiU', 'first time goal'),
                                     ('2nd_score', 'tiU',
                                      'second time scored'),
                                     ('2nd_concede', 'tiU',
                                      'second time conceded'),
                                     ('2nd_global', 'tiU', 'second time goal'),
                                     ('total_score', 'tiU',
                                      'all goal scored'),
                                     ('total_concede', 'tiU',
                                      'all goal conceded'),
                                     ('global', 'tiU',
                                      'all goal in the match')],

              'awayScore_dataset': [('mp', 'tiU', 'match play'),
                                    ('date_time', 'dT',
                                     'event\'s date and time'),
                                    ('home_team', 30, 'home team name'),
                                    ('away_team', 30, 'away team name',
                                     'cKey'),
                                    ('ranking', 'tiU', 'scored ranking'),
                                    ('total_sum', 'tiU', 'sum goal'),
                                    ('total_avg', 'tiU', 'average goal'),
                                    ('total_max', 'tiU', 'maximal score'),
                                    ('total_min', 'tiU', 'minimal score'),
                                    ('total_wSc', 'tiU',
                                     '% events without scoring'),
                                    ('1st_score', 'tiU',
                                     'first time scored'),
                                    ('1st_concede', 'tiU',
                                     'first time conceded'),
                                    ('1st_global', 'tiU', 'first time goal'),
                                    ('2nd_score', 'tiU',
                                     'second time scored'),
                                    ('2nd_concede', 'tiU',
                                     'second time conceded'),
                                    ('2nd_global', 'tiU', 'second time goal'),
                                    ('total_score', 'tiU',
                                     'all goal scored'),
                                    ('total_concede', 'tiU',
                                     'all goal conceded'),
                                    ('global', 'tiU',
                                     'all goal in the match')],

              'awayConcede_dataset': [('mp', 'tiU', 'match play'),
                                      ('date_time', 'dT',
                                       'event\'s date and time'),
                                      ('home_team', 30, 'home team name'),
                                      ('away_team', 30, 'away team name',
                                       'cKey'),
                                      ('ranking', 'tiU', 'conceded ranking'),
                                      ('total_sum', 'tiU', 'sum goal'),
                                      ('total_avg', 'tiU', 'average goal'),
                                      ('total_max', 'tiU', 'maximal score'),
                                      ('total_min', 'tiU', 'minimal score'),
                                      ('total_clS', 'tiU',
                                       '% events with clean sheet'),
                                      ('1st_score', 'tiU',
                                       'first time scored'),
                                      ('1st_concede', 'tiU',
                                       'first time conceded'),
                                      ('1st_global', 'tiU',
                                       'first time goal'),
                                      ('2nd_score', 'tiU',
                                       'second time scored'),
                                      ('2nd_concede', 'tiU',
                                       'second time conceded'),
                                      ('2nd_global', 'tiU',
                                       'second time goal'),
                                      ('total_score', 'tiU',
                                       'all goal scored'),
                                      ('total_concede', 'tiU',
                                       'all goal conceded'),
                                      ('global', 'tiU',
                                       'all goal in the match')],

              'awayGlobal_dataset': [('mp', 'tiU', 'match play'),
                                     ('date_time', 'dT',
                                      'events\'s date and time'),
                                     ('home_team', 30, 'home team name'),
                                     ('away_team', 30, 'away team name',
                                      'cKey', 'awayGlobal_stats', 'team'),
                                     ('ranking', 'tiU', 'global goal ranking'),
                                     ('total_sum', 'tiU', 'sum goal'),
                                     ('total_avg', 'tiU', 'average goal'),
                                     ('total_max', 'tiU', 'maximal score'),
                                     ('total_min', 'tiU', 'minimal score'),
                                     ('total_btts', 'tiU',
                                      '% events with goal on two sides'),
                                     ('1st_score', 'tiU',
                                      'first time scored'),
                                     ('1st_concede', 'tiU',
                                      'first time conceded'),
                                     ('1st_global', 'tiU', 'first time goal'),
                                     ('2nd_score', 'tiU',
                                      'second time scored'),
                                     ('2nd_concede', 'tiU',
                                      'second time conceded'),
                                     ('2nd_global', 'tiU', 'second time goal'),
                                     ('total_score', 'tiU',
                                      'all goal scored'),
                                     ('total_concede', 'tiU',
                                      'all goal concede'),
                                     ('global', 'tiU',
                                      'all goal in the match')]}

    VIEWS = {'V_homeScore_stats': [('team'),
                                   ('total_sum'),
                                   ('total_avg'),
                                   ('total_min'),
                                   ('total_max'),
                                   ('total_wSc')],

             'V_homeConcede_stats': [('team'),
                                     ('total_sum'),
                                     ('total_avg'),
                                     ('total_min'),
                                     ('total_max'),
                                     ('total_clS')],

             'V_homeGlobal_stats': [('team'),
                                    ('total_sum'),
                                    ('total_avg'),
                                    ('total_min'),
                                    ('total_max'),
                                    ('total_btts')],

             'V_awayScore_stats': [('team'),
                                   ('total_sum'),
                                   ('total_avg'),
                                   ('total_min'),
                                   ('total_max'),
                                   ('total_wSc')],

             'V_awayConcede_stats': [('team'),
                                     ('total_sum'),
                                     ('total_avg'),
                                     ('total_min'),
                                     ('total_max'),
                                     ('total_clS')],

             'V_awayGlobal_stats': [('team'),
                                    ('total_sum'),
                                    ('total_avg'),
                                    ('total_min'),
                                    ('total_max'),
                                    ('total_btts')],

             'V_global_ranking': [('team'),
                                  ('mp'),
                                  ('draw'),
                                  ('lose'),
                                  ('win'),
                                  ('sco'),
                                  ('con'),
                                  ('diff'),
                                  ('PTS')]}

    def create_trigger(self):
        """Description of triggers"""
        TRIGGERS = []
        # L'insertion des équipes dans homeGlobal_stats,
        # déclenche l'insertion des équipes dans les autres tables.
        trigger1 = f"CREATE TRIGGER afterInsert_homeGlobal_stats\
{self.surfix} AFTER INSERT homeGlobal_stats{self.surfix} FOR EACH ROW\n\
BEGIN\n\t\
INSERT INTO homeScore_stats{self.surfix}  (team) VALUES (NEW.team);\n\t\
INSERT INTO homeConcede_stats{self.surfix} (team) VALUES (NEW.team);\n\t\
INSERT INTO awayGlobal_stats{self.surfix} (team) VALUES (NEW.team);\n\t\
INSERT INTO awayScore_stats{self.surfix} (team) VALUES (NEW.team);\n\t\
INSERT INTO awayConcede_stats{self.surfix} (team) VALUES (NEW.team);\n\t\
INSERT INTO homeGlobal_bins{self.surfix} (team) VALUES (NEW.team);\n\t\
INSERT INTO homeScore_bins{self.surfix} (team) VALUES (NEW.team);\n\t\
INSERT INTO homeConcede_bins{self.surfix} (team) VALUES (NEW.team);\n\t\
INSERT INTO awayGlobal_bins{self.surfix} (team) VALUES (NEW.team);\n\t\
INSERT INTO awayScore_bins{self.surfix} (team) VALUES (NEW.team);\n\t\
INSERT INTO awayConcede_bins{self.surfix} (team) VALUES (NEW.team);\n\t\
INSERT INTO ranking (team) VALUES (NEW.team);\nEND //"
        TRIGGERS.append(trigger1)
        # after insert on home_results
        # away_results is update automatically
        trigger2 = f"CREATE TRIGGER afterInsert_home_results_away_results\
{self.surfix} AFTER INSERT ON home_results{self.surfix} FOR EACH ROW\n\t\
INSERT INTO away_results{self.surfix} VALUES (NEW.mp, NEW.date_time,\
NEW.home_team, NEW.away_team, NEW.1st_concede, NEW.1st_score, NEW.1st_global,\
NEW.2nd_concede, NEW.2nd_score, NEW.2nd_global, NEW.total_concede, NEW.total_\
score, NEW.global);\nEND //"
        TRIGGERS.append(trigger2)
        # déclenche un série d'operations pour remplir les tables statistiques
        # apres l'insertion des résultats a domicile
        trigger3 = f"CREATE TRIGGER afterInsert_home_results_home__stats\
{self.surfix} AFTER INSERT ON home_results{self.surfix} FOR EACH ROw\n\
BEGIN\n\t\
DECLARE sumVar_total_score TINYINT UNSIGNED;\n\t\
DECLARE avgVar_total_score DECIMAL(2,1);\n\t\
DECLARE maxVar_total_score TINYINT UNSIGNED;\n\t\
DECLARE minVar_total_score TINYINT UNSIGNED;\n\t\
DECLARE wScVar_total_score TINYINT UNSIGNED;\n\t\
DECLARE sumVar_total_concede TINYINT UNSIGNED;\n\t\
DECLARE avgVar_total_concede DECIMAL(2,1);\n\t\
DECLARE maxVar_total_concede TINYINT UNSIGNED;\n\t\
DECLARE minVar_total_concede TINYINT UNSIGNED;\n\t\
DECLARE clSVar_total_concede TINYINT UNSIGNED;\n\t\
DECLARE sumVar_global TINYINT UNSIGNED;\n\t\
DECLARE avgVar_global DECIMAL(2,1);\n\t\
DECLARE maxVar_global TINYINT UNSIGNED;\n\t\
DECLARE minVar_global TINYINT UNSIGNED;\n\t\
DECLARE bttsVar_global TINYINT UNSIGNED;\n\t\
\
SELECT SUM(total_score) INTO sumVar_total_score\n\t\
FROM home_results{self.surfix} WHERE home_team = NEW.home_team;\n\t\
UPDATE homeScore_stats{self.surfix} \
SET total_sum = sumVar_total_score WHERE team = NEW.home_team;\n\t\
SELECT AVG(total_score) INTO avgVar_total_score\n\t\
FROM home_results{self.surfix} WHERE home_team = NEW.home_team;\n\t\
UPDATE homeScore_stats{self.surfix} \
SET total_avg = avgVar_total_score WHERE team = NEW.home_team;\n\t\
SELECT MAX(total_score) INTO maxVar_total_score\n\t\
FROM home_results{self.surfix} WHERE home_team = NEW.home_team;\n\t\
UPDATE homeScore_stats{self.surfix} \
SET total_max = maxVar_total_score WHERE team = NEW.home_team;\n\t\
SELECT MIN(total_score) INTO minVar_total_score\n\t\
FROM home_results{self.surfix} WHERE home_team = NEW.home_team;\n\t\
UPDATE homeScore_stats{self.surfix} \
SET total_min = minVar_total_score WHERE team = NEW.home_team;\n\t\
SELECT COUNT(total_score) INTO wScVar_total_score\n\t\
FROM home_results{self.surfix} \
WHERE home_team = NEW.home_team AND (total_score < 1) ;\n\t\
SET wScVar_total_score = ((wScVar_total_score / total) * 100);\n\t\
UPDATE homeScore_stats{self.surfix} \
SET total_wSc = wScVar_total_score WHERE team = NEW.home_team;\n\t\
\
SELECT SUM(total_concede) INTO sumVar_total_concede\n\t\
FROM home_results{self.surfix} WHERE home_team = NEW.home_team;\n\t\
UPDATE homeConcede_stats{self.surfix} \
SET total_sum = sumVar_total_concede WHERE team = NEW.home_team;\n\t\
SELECT AVG(total_concede) INTO avgVar_total_concede\n\t\
FROM home_results{self.surfix} WHERE home_team = NEW.home_team;\n\t\
UPDATE homeConcede_stats{self.surfix} \
SET total_avg = avgVar_total_concede WHERE team = NEW.home_team;\n\t\
SELECT MAX(total_concede) INTO maxVar_total_concede\n\t\
FROM home_results{self.surfix} WHERE home_team = NEW.home_team;\n\t\
UPDATE homeConcede_stats{self.surfix} \
SET total_max = maxVar_total_concede WHERE team = NEW.home_team;\n\t\
SELECT MIN(total_concede) INTO minVar_total_concede\n\t\
FROM home_results{self.surfix} WHERE home_team = NEW.home_team;\n\t\
UPDATE homeConcede_stats{self.surfix} \
SET total_min = minVar_total_concede WHERE team = NEW.home_team;\n\t\
SELECT COUNT(*) INTO clSVar_total_concede\n\t\
FROM home_results{self.surfix} \
WHERE home_team = NEW.home_team AND (total_concede < 1 ) ;\n\t\
SET clSVar_total_concede = ((clSVar_total_concede / total) * 100);\n\t\
UPDATE homeConcede_stats{self.surfix} \
SET total_clS = clSVar_total_concede WHERE team = NEW.home_team;\n\t\
\
SELECT SUM(global) INTO sumVar_global\n\t\
FROM home_results{self.surfix} WHERE home_team = NEW.home_team;\n\t\
UPDATE homeGlobal_stats{self.surfix} \
SET total_sum = sumVar_global WHERE team = NEW.home_team;\n\t\
SELECT AVG(global) INTO avgVar_global\n\t\
FROM home_results{self.surfix} WHERE home_team = NEW.home_team;\n\t\
UPDATE homeGlobal_stats{self.surfix} \
SET total_avg = avgVar_global WHERE team = NEW.home_team;\n\t\
SELECT MAX(global) INTO maxVar_global\n\t\
FROM home_results{self.surfix} WHERE home_team = NEW.home_team;\n\t\
UPDATE homeGlobal_stats{self.surfix} \
SET total_max = maxVar_global WHERE team = NEW.home_team;\n\t\
SELECT MIN(global) INTO minVar_global\n\t\
FROM home_results{self.surfix} WHERE home_team = NEW.home_team;\n\t\
UPDATE homeGlobal_stats{self.surfix} \
SET total_min = minVar_global WHERE team = NEW.home_team;\n\t\
SELECT COUNT(*) INTO bttsVar_global\n\t\
FROM home_results{self.surfix} WHERE \
home_team = NEW.home_team AND (total_score >= 1 AND total_concede >=1 ) ;\n\t\
SET bttsVar_total_score = ((bttsVar_global / total) * 100);\n\t\
UPDATE homeGlobal_stats{self.surfix} \
SET total_btts = bttsVar_global WHERE team = NEW.home_team ; \n\tEND //"
        TRIGGERS.append(trigger3)
        # déclenche un série d'operations pour remplir les tables statistiques
        # apres l'insertion des résultats a l'exterieur
        trigger4 = f"CREATE TRIGGER afterInsert_away_results_away__stats\
{self.surfix} AFTER INSERT ON away_results{self.surfix} FOR EACH ROw\n\
BEGIN\n\t\
DECLARE sumVar_total_score TINYINT UNSIGNED;\n\t\
DECLARE avgVar_total_score DECIMAL(2,1);\n\t\
DECLARE maxVar_total_score TINYINT UNSIGNED;\n\t\
DECLARE minVar_total_score TINYINT UNSIGNED;\n\t\
DECLARE wScVar_total_score TINYINT UNSIGNED;\n\t\
DECLARE sumVar_total_concede TINYINT UNSIGNED;\n\t\
DECLARE avgVar_total_concede DECIMAL(2,1);\n\t\
DECLARE maxVar_total_concede TINYINT UNSIGNED;\n\t\
DECLARE minVar_total_concede TINYINT UNSIGNED;\n\t\
DECLARE clSVar_total_concede TINYINT UNSIGNED;\n\t\
DECLARE sumVar_global TINYINT UNSIGNED;\n\t\
DECLARE avgVar_global DECIMAL(2,1);\n\t\
DECLARE maxVar_global TINYINT UNSIGNED;\n\t\
DECLARE minVar_global TINYINT UNSIGNED;\n\t\
DECLARE bttsVar_global TINYINT UNSIGNED;\n\t\
\
SELECT SUM(total_score) INTO sumVar_total_score\n\t\
FROM away_results{self.surfix} WHERE away_team = NEW.away_team;\n\t\
UPDATE awayScore_stats{self.surfix} \
SET total_sum = sumVar_total_score WHERE team = NEW.away_team;\n\t\
SELECT AVG(total_score) INTO avgVar_total_score\n\t\
FROM away_results{self.surfix} WHERE away_team = NEW.away_team;\n\t\
UPDATE awayScore_stats{self.surfix} \
SET total_avg = avgVar_total_score WHERE team = NEW.away_team;\n\t\
SELECT MAX(total_score) INTO maxVar_total_score\n\t\
FROM away_results{self.surfix} WHERE away_team = NEW.away_team;\n\t\
UPDATE awayScore_stats{self.surfix} \
SET total_max = maxVar_total_score WHERE team = NEW.away_team;\n\t\
SELECT MIN(total_score) INTO minVar_total_score\n\t\
FROM away_results{self.surfix} WHERE away_team = NEW.away_team;\n\t\
UPDATE awayScore_stats{self.surfix} \
SET total_min = minVar_total_score WHERE team = NEW.away_team;\n\t\
SELECT COUNT(total_score) INTO wScVar_total_score\n\t\
FROM away_results{self.surfix} \
WHERE away_team = NEW.away_team AND (total_score < 1) ;\n\t\
SET wScVar_total_score = ((wScVar_total_score / total) * 100);\n\t\
UPDATE awayScore_stats{self.surfix} \
SET total_wSc = wScVar_total_score WHERE team = NEW.away_team;\n\t\
\
SELECT SUM(total_concede) INTO sumVar_total_concede\n\t\
FROM away_results{self.surfix} WHERE away_team = NEW.away_team;\n\t\
UPDATE awayConcede_stats{self.surfix} \
SET total_sum = sumVar_total_concede WHERE team = NEW.away_team;\n\t\
SELECT AVG(total_concede) INTO avgVar_total_concede\n\t\
FROM away_results{self.surfix} WHERE away_team = NEW.away_team;\n\t\
UPDATE awayConcede_stats{self.surfix} \
SET total_avg = avgVar_total_concede WHERE team = NEW.away_team;\n\t\
SELECT MAX(total_concede) INTO maxVar_total_concede\n\t\
FROM away_results{self.surfix} WHERE away_team = NEW.away_team;\n\t\
UPDATE awayConcede_stats{self.surfix} \
SET total_max = maxVar_total_concede WHERE team = NEW.away_team;\n\t\
SELECT MIN(total_concede) INTO minVar_total_concede\n\t\
FROM away_results{self.surfix} WHERE away_team = NEW.away_team;\n\t\
UPDATE awayConcede_stats{self.surfix} \
SET total_min = minVar_total_concede WHERE team = NEW.away_team;\n\t\
SELECT COUNT(*) INTO clSVar_total_concede\n\t\
FROM away_results{self.surfix} \
WHERE away_team = NEW.away_team AND (total_concede < 1 ) ;\n\t\
SET clSVar_total_concede = ((clSVar_total_concede / total) * 100);\n\t\
UPDATE awayConcede_stats{self.surfix} \
SET total_clS = clSVar_total_concede WHERE team = NEW.away_team;\n\t\
\
SELECT SUM(global) INTO sumVar_global\n\t\
FROM away_results{self.surfix} WHERE away_team = NEW.away_team;\n\t\
UPDATE awayGlobal_stats{self.surfix} \
SET total_sum = sumVar_global WHERE team = NEW.away_team;\n\t\
SELECT AVG(global) INTO avgVar_global\n\t\
FROM away_results{self.surfix} WHERE away_team = NEW.away_team;\n\t\
UPDATE awayGlobal_stats{self.surfix} \
SET total_avg = avgVar_global WHERE team = NEW.away_team;\n\t\
SELECT MAX(global) INTO maxVar_global\n\t\
FROM away_results{self.surfix} WHERE away_team = NEW.away_team;\n\t\
UPDATE awayGlobal_stats{self.surfix} \
SET total_max = maxVar_global WHERE team = NEW.away_team;\n\t\
SELECT MIN(global) INTO minVar_global\n\t\
FROM away_results{self.surfix} WHERE away_team = NEW.away_team;\n\t\
UPDATE awayGlobal_stats{self.surfix} \
SET total_min = minVar_global WHERE team = NEW.away_team;\n\t\
SELECT COUNT(*) INTO bttsVar_global\n\t\
FROM away_results{self.surfix} WHERE \
away_team = NEW.away_team AND (total_score >= 1 AND total_concede >=1 ) ;\n\t\
SET bttsVar_total_score = ((bttsVar_global / total) * 100);\n\t\
UPDATE awayGlobal_stats{self.surfix} \
SET total_btts = bttsVar_global WHERE team = NEW.away_team ; \n\tEND //"
        TRIGGERS.append(trigger4)
        # déclenche un série d'operations pour remplir les tables bins
        # apres l'insertion des résultats a domicile
        trigger5 = f"CREATE TRIGGER afterInsert_home_results_home__bins\
{self.surfix} AFTER INSERT ON home_results{self.surfix} FOR EACH ROW\n\
BEGIN\n\t\
DECLARE total, var0_under, var1_under, var2_under, var0_over, var1_over, \
var2_over TINYINT UNSIGNED\n\t\
SELECT COUNT(total_score) INTO total\n\t\
FROM home_resultsL1 WHERE home_team = NEW.home_team;\n\t\
\
SELECT COUNT(total_score) INTO var0_under\n\t\
FROM home_results{self.surfix} \
WHERE home_team = NEW.home_team AND (total_score < 1);\n\t\
SET var0_under = ((var0_under / total) * 100);\n\t\
UPDATE homeScore_bins{self.surfix} \
SET under0_5 = var0_under WHERE team = NEW.home_team;\n\t\
SELECT COUNT(total_score) INTO var1_under\n\t\
FROM home_results{self.surfix} \
WHERE home_team = NEW.home_team AND (total_score <= 1);\n\t\
SET var1_under = ((var1_under / total) * 100);\n\t\
UPDATE homeScore_bins{self.surfix} \
SET under1_5 = var1_under WHERE team = NEW.home_team;\n\t\
SELECT COUNT(total_score) INTO var2_under\n\t\
FROM home_results{self.surfix} \
WHERE home_team = NEW.home_team AND (total_score <= 2);\n\t\
SET var2_under = ((var2_under / total) * 100);\n\t\
UPDATE homeScore_bins{self.surfix} \
SET under2_5 = var2_under WHERE team = NEW.home_team;\n\t\
\
SELECT COUNT(total_score) INTO var0_over\n\t\
FROM home_results{self.surfix} \
WHERE home_team = NEW.home_team AND (total_score >= 1);\n\t\
SET var0_over = ((var0_over / total) * 100);\n\t\
UPDATE homeScore_bins{self.surfix} \
SET over0_5 = var0_over WHERE team = NEW.home_team;\n\t\
SELECT COUNT(total_score) INTO var1_over\n\t\
FROM home_results{self.surfix} \
WHERE home_team = NEW.home_team AND (total_score >= 2);\n\t\
SET var1_over = ((var1_over / total) * 100);\n\t\
UPDATE homeScore_bins{self.surfix} \
SET over1_5 = var1_over WHERE team = NEW.home_team;\n\t\
SELECT COUNT(total_score) INTO var2_over\n\t\
FROM home_results{self.surfix} \
WHERE home_team = NEW.home_team AND (total_score >= 3);\n\t\
SET var2_over = ((var2_over / total) * 100);\n\t\
UPDATE homeScore_bins{self.surfix} \
SET over2_5 = var2_over WHERE team = NEW.home_team;\n\t\
\
SELECT COUNT(total_concede) INTO var0_under\n\t\
FROM home_results{self.surfix} \
WHERE home_team = NEW.home_team AND (total_concede < 1);\n\t\
SET var0_under = ((var0_under / total) * 100);\n\t\
UPDATE homeConcede_bins{self.surfix} \
SET under0_5 = var0_under WHERE team = NEW.home_team;\n\t\
SELECT COUNT(total_concede) INTO var1_under\n\t\
FROM home_results{self.surfix} \
WHERE home_team = NEW.home_team AND (total_concede <= 1);\n\t\
SET var1_under = ((var1_under / total) * 100);\n\t\
UPDATE homeConcede_bins{self.surfix} \
SET under1_5 = var1_under WHERE team = NEW.home_team;\n\t\
SELECT COUNT(total_concede) INTO var2_under\n\t\
FROM home_results{self.surfix} \
WHERE home_team = NEW.home_team AND (total_concede <= 2);\n\t\
SET var2_under = ((var2_under / total) * 100);\n\t\
UPDATE homeConcede_bins{self.surfix} \
SET under2_5 = var2_under WHERE team = NEW.home_team;\n\t\
\
SELECT COUNT(total_concede) INTO var0_over\n\t\
FROM home_results{self.surfix} \
WHERE home_team = NEW.home_team AND (total_concede >= 1);\n\t\
SET var0_over = ((var0_over / total) * 100);\n\t\
UPDATE homeConcede_bins{self.surfix} \
SET over0_5 = var0_over WHERE team = NEW.home_team;\n\t\
SELECT COUNT(total_concede) INTO var1_over\n\t\
FROM home_results{self.surfix} \
WHERE home_team = NEW.home_team AND (total_concede >= 2);\n\t\
SET var1_over = ((var1_over / total) * 100);\n\t\
UPDATE homeConcede_bins{self.surfix} \
SET over1_5 = var1_over WHERE team = NEW.home_team;\n\t\
SELECT COUNT(total_concede) INTO var2_over\n\t\
FROM home_results{self.surfix} \
WHERE home_team = NEW.home_team AND (total_concede >= 3);\n\t\
SET var2_over = ((var2_over / total) * 100);\n\t\
UPDATE homeConcede_bins{self.surfix} \
SET over2_5 = var2_over WHERE team = NEW.home_team;\n\t\
\
SELECT COUNT(global) INTO var0_under\n\t\
FROM home_results{self.surfix} \n\t\
WHERE home_team = NEW.home_team AND (global < 1);\n\t\
SET var0_under = ((var0_under / total) * 100);\n\t\
UPDATE homeGlobal_bins{self.surfix} \
SET under0_5 = var0_under WHERE team = NEW.home_team;\n\t\
SELECT COUNT(global) INTO var1_under\n\t\
FROM home_results{self.surfix} \
WHERE home_team = NEW.home_team AND (global <= 1);\n\t\
SET var1_under = ((var1_under / total) * 100);\n\t\
UPDATE homeGlobal_bins{self.surfix} \
SET under1_5 = var1_under WHERE team = NEW.home_team;\n\t\
SELECT COUNT(global) INTO var2_under\n\t\
FROM home_results{self.surfix} \
WHERE home_team = NEW.home_team AND (global <= 2);\n\t\
SET var2_under = ((var2_under / total) * 100);\n\t\
UPDATE homeGlobal_bins{self.surfix} \
SET under2_5 = var2_under WHERE team = NEW.home_team;\n\t\
\
SELECT COUNT(global) INTO var0_over\n\t\
FROM home_results{self.surfix} \
WHERE home_team = NEW.home_team AND (global >= 1);\n\t\
SET var0_over = ((var0_over / total) * 100);\n\t\
UPDATE homeGlobal_bins{self.surfix} \
SET over0_5 = var0_over WHERE team = NEW.home_team;\n\t\
SELECT COUNT(global) INTO var1_over\n\t\
FROM home_results{self.surfix} \
WHERE home_team = NEW.home_team AND (global >= 2);\n\t\
SET var1_over = ((var1_over / total) * 100);\n\t\
UPDATE homeGlobal_bins{self.surfix} \
SET over1_5 = var1_over WHERE team = NEW.home_team;\n\t\
SELECT COUNT(global) INTO var2_over\n\t\
FROM home_results{self.surfix} \
WHERE home_team = NEW.home_team AND (global >= 3);\n\t\
SET var2_over = ((var2_over / total) * 100);\n\t\
UPDATE homeGlobal_bins{self.surfix} \
SET over2_5 = var2_over WHERE team = NEW.home_team;\nEND //"
        TRIGGERS.append(trigger5)
        # déclenche un série d'operations pour remplir les tables bins
        # apres l'insertion des résultats a l'exterieur
        trigger6 = f"CREATE TRIGGER afterInsert_away_results_away__bins\
{self.surfix} AFTER INSERT ON away_results{self.surfix} FOR EACH ROW\n\
BEGIN\n\t\
DECLARE total, var0_under, var1_under, var2_under, var0_over, var1_over, \
var2_over TINYINT UNSIGNED\n\t\
SELECT COUNT(total_score) INTO total\n\t\
FROM away_resultsL1 WHERE away_team = NEW.away_team;\n\t\
\
SELECT COUNT(total_score) INTO var0_under\n\t\
FROM away_results{self.surfix} \
WHERE away_team = NEW.away_team AND (total_score < 1);\n\t\
SET var0_under = ((var0_under / total) * 100);\n\t\
UPDATE awayScore_bins{self.surfix} \
SET under0_5 = var0_under WHERE team = NEW.away_team;\n\t\
SELECT COUNT(total_score) INTO var1_under\n\t\
FROM away_results{self.surfix} \
WHERE away_team = NEW.away_team AND (total_score <= 1);\n\t\
SET var1_under = ((var1_under / total) * 100);\n\t\
UPDATE awayScore_bins{self.surfix} \
SET under1_5 = var1_under WHERE team = NEW.away_team;\n\t\
SELECT COUNT(total_score) INTO var2_under\n\t\
FROM away_results{self.surfix} \
WHERE away_team = NEW.away_team AND (total_score <= 2);\n\t\
SET var2_under = ((var2_under / total) * 100);\n\t\
UPDATE awayScore_bins{self.surfix} \
SET under2_5 = var2_under WHERE team = NEW.away_team;\n\t\
\
SELECT COUNT(total_score) INTO var0_over\n\t\
FROM away_results{self.surfix} \
WHERE away_team = NEW.away_team AND (total_score >= 1);\n\t\
SET var0_over = ((var0_over / total) * 100);\n\t\
UPDATE awayScore_bins{self.surfix} \
SET over0_5 = var0_over WHERE team = NEW.away_team;\n\t\
SELECT COUNT(total_score) INTO var1_over\n\t\
FROM away_results{self.surfix} \
WHERE away_team = NEW.away_team AND (total_score >= 2);\n\t\
SET var1_over = ((var1_over / total) * 100);\n\t\
UPDATE awayScore_bins{self.surfix} \
SET over1_5 = var1_over WHERE team = NEW.away_team;\n\t\
SELECT COUNT(total_score) INTO var2_over\n\t\
FROM away_results{self.surfix} \
WHERE away_team = NEW.away_team AND (total_score >= 3);\n\t\
SET var2_over = ((var2_over / total) * 100);\n\t\
UPDATE awayScore_bins{self.surfix} \
SET over2_5 = var2_over WHERE team = NEW.away_team;\n\t\
\
SELECT COUNT(total_concede) INTO var0_under\n\t\
FROM away_results{self.surfix} \
WHERE away_team = NEW.away_team AND (total_concede < 1);\n\t\
SET var0_under = ((var0_under / total) * 100);\n\t\
UPDATE awayConcede_bins{self.surfix} \
SET under0_5 = var0_under WHERE team = NEW.away_team;\n\t\
SELECT COUNT(total_concede) INTO var1_under\n\t\
FROM away_results{self.surfix} \
WHERE away_team = NEW.away_team AND (total_concede <= 1);\n\t\
SET var1_under = ((var1_under / total) * 100);\n\t\
UPDATE awayConcede_bins{self.surfix} \
SET under1_5 = var1_under WHERE team = NEW.away_team;\n\t\
SELECT COUNT(total_concede) INTO var2_under\n\t\
FROM away_results{self.surfix} \
WHERE away_team = NEW.away_team AND (total_concede <= 2);\n\t\
SET var2_under = ((var2_under / total) * 100);\n\t\
UPDATE awayConcede_bins{self.surfix} \
SET under2_5 = var2_under WHERE team = NEW.away_team;\n\t\
\
SELECT COUNT(total_concede) INTO var0_over\n\t\
FROM away_results{self.surfix} \
WHERE away_team = NEW.away_team AND (total_concede >= 1);\n\t\
SET var0_over = ((var0_over / total) * 100);\n\t\
UPDATE awayConcede_bins{self.surfix} \
SET over0_5 = var0_over WHERE team = NEW.away_team;\n\t\
SELECT COUNT(total_concede) INTO var1_over\n\t\
FROM away_results{self.surfix} \
WHERE away_team = NEW.away_team AND (total_concede >= 2);\n\t\
SET var1_over = ((var1_over / total) * 100);\n\t\
UPDATE awayConcede_bins{self.surfix} \
SET over1_5 = var1_over WHERE team = NEW.away_team;\n\t\
SELECT COUNT(total_concede) INTO var2_over\n\t\
FROM away_results{self.surfix} \
WHERE away_team = NEW.away_team AND (total_concede >= 3);\n\t\
SET var2_over = ((var2_over / total) * 100);\n\t\
UPDATE awayConcede_bins{self.surfix} \
SET over2_5 = var2_over WHERE team = NEW.away_team;\n\t\
\
SELECT COUNT(global) INTO var0_under\n\t\
FROM away_results{self.surfix} \n\t\
WHERE away_team = NEW.away_team AND (global < 1);\n\t\
SET var0_under = ((var0_under / total) * 100);\n\t\
UPDATE awayGlobal_bins{self.surfix} \
SET under0_5 = var0_under WHERE team = NEW.away_team;\n\t\
SELECT COUNT(global) INTO var1_under\n\t\
FROM away_results{self.surfix} \
WHERE away_team = NEW.away_team AND (global <= 1);\n\t\
SET var1_under = ((var1_under / total) * 100);\n\t\
UPDATE awayGlobal_bins{self.surfix} \
SET under1_5 = var1_under WHERE team = NEW.away_team;\n\t\
SELECT COUNT(global) INTO var2_under\n\t\
FROM away_results{self.surfix} \
WHERE away_team = NEW.away_team AND (global <= 2);\n\t\
SET var2_under = ((var2_under / total) * 100);\n\t\
UPDATE awayGlobal_bins{self.surfix} \
SET under2_5 = var2_under WHERE team = NEW.away_team;\n\t\
\
SELECT COUNT(global) INTO var0_over\n\t\
FROM away_results{self.surfix} \
WHERE away_team = NEW.away_team AND (global >= 1);\n\t\
SET var0_over = ((var0_over / total) * 100);\n\t\
UPDATE awayGlobal_bins{self.surfix} \
SET over0_5 = var0_over WHERE team = NEW.away_team;\n\t\
SELECT COUNT(global) INTO var1_over\n\t\
FROM away_results{self.surfix} \
WHERE away_team = NEW.away_team AND (global >= 2);\n\t\
SET var1_over = ((var1_over / total) * 100);\n\t\
UPDATE awayGlobal_bins{self.surfix} \
SET over1_5 = var1_over WHERE team = NEW.away_team;\n\t\
SELECT COUNT(global) INTO var2_over\n\t\
FROM away_results{self.surfix} \
WHERE away_team = NEW.away_team AND (global >= 3);\n\t\
SET var2_over = ((var2_over / total) * 100);\n\t\
UPDATE awayGlobal_bins{self.surfix} \
SET over2_5 = var2_over WHERE team = NEW.away_team;\nEND //"
        TRIGGERS.append(trigger6)
        # Ce trigger met a jour le resultats des championnats
        trigger7 = f"CREATE TRIGGER afterInsert_home_results_ranking\
{self.surfix} AFTER INSERT ON home_results{self.surfix} FOR EACH ROW\n\
BEGIN\n\t\
DECLARE hScore_sum_hT, aScore_sum_hT, hScore_sum_aT, aScore_sum_aT TINYINT\
UNSIGNED NOT NULL;\n\t\
DECLARE hConcede_sum_hT, aConcede_sum_hT, hConcede_sum_aT, \
aConcede_sum_aT TINYINT UNSIGNED NOT NULL;\n\t\
\
SELECT total_sum INTO hScore_sum_hT\n\t\
FROM homeScore_stats WHERE team = NEW.home_team;\n\t\
SELECT total_sum INTO aScore_sum_hT\n\t\
FROM awayScore_stats WHERE team = NEW.home_team;\n\t\
SELECT total_sum INTO hScore_sum_aT\n\t\
FROM awayScore_stats WHERE team = NEW.away_team;\n\t\
SELECT total_sum INTO aScore_sum_aT\n\t\
FROM awayScore_stats WHERE team = NEW.away_team;\n\t\
UPDATE global_ranking\n\t\
SET sco = hScore_sum_hT + aScore_sum_hT WHERE team = NEW.home_team;\n\t\
UPDATE global_ranking\n\t\
SET con = hConcede_sum_hT + aConcede_sum_hT WHERE team = NEW.home_team;\n\t\
UPDATE global_ranking\n\t\
SET diff = (hScore_sum_hT + hScore_sum_aT) - \
(hConcede_sum_hT + hConcede_sum_aT)\n\t\
WHERE team = NEW.home_team;\n\t\
UPDATE global_ranking\n\t\
SET sco = hScore_sum_aT + aScore_sum_aT WHERE team = NEW.away_team;\n\t\
UPDATE global_ranking\n\t\
SET con = hConcede_sum_aT + aConcede_sum_aT WHERE team = NEW.away_team;\n\t\
UPDATE global_ranking\n\t\
SET diff = (aScore_sum_hT + aScore_sum_aT) - \
(aConcede_sum_hT + aConcede_sum_aT)\n\t\
WHERE team = NEW.away_team;\n\t\
IF NEW.total_score > NEW.total_concede\n\t\t\
UPDATE global_ranking\n\t\t\
SET pts = OLD.pts + 3 WHERE team = NEW.home_team;\n\t\t\
UPDATE global_ranking\n\t\t\
SET win = OLD.win + 1 WHERE team = NEW.home_team;\n\t\t\
UPDATE global_ranking\n\t\t\
SET lose = OLD.lose + 1 WHERE team = NEW.away_team;\n\t\
ELSE IF NEW.total_score < NEW.total_concede\n\t\t\
UPDATE global_ranking\n\t\t\
SET pts = OLD.pts + 3 WHERE team = NEW.away_team;\n\t\t\
UPDATE global_ranking\n\t\t\
SET win = OLD.win + 1 WHERE team = NEW.away_team;\n\t\t\
UPDATE global_ranking\n\t\t\
SET lose = OLD.lose + 1 WHERE team = NEW.home_team;\n\t\
ELSE\n\t\t\
UPDATE global_ranking\n\t\t\
SET pts = OLD.pts + 1 WHERE team = NEW.home_team;\n\t\t\
UPDATE global_ranking\n\t\t\
SET draw = OLD.draw + 1 WHERE team = NEW.home_team;\n\t\t\
UPDATE global_ranking\n\t\t\
SET pts = OLD.pts + 1 WHERE team = NEW.away_team;\n\t\t\
UPDATE global_ranking\n\t\t\
SET draw = OLD.draw + 1 WHERE team = NEW.away_team;\n\
END //"
        TRIGGERS.append(trigger7)
        # Ces triggers mettent a jour les datasets
        # en puisant dans les tables "statistiques, bins, results".
        trigger8 = f"CREATE TRIGGER beforeInsert_home_results_home__dataset\
{self.surfix} BEFORE INSERT ON home_results{self.surfix} FOR EACH ROW\n\
BEGIN\n\t\
\
DECLARE var_rank, var_min, var_max, var_sum, var_wSc, var_clS, var_btts\
TINYINT UNSIGNED;\n\t\
DECLARE var_avg DECIMAL(2,1);\n\t\
DECLARE var_under0, var_under1, var_under2, var_over0, var_over1, var_over2\
TINYINT UNSIGNED;\n\t\
\
SELECT ranking, total_sum, total_avg, total_max, total_min, total_wSc INTO\
var_rank, var_sum, var_avg, var_max, var_min, var_wSc\n\t\
fROm V_homeScore_stats{self.surfix} WHERE team = NEW.home_team;\n\t\
SELECT under0_5, under1_5, under2_5, over0_5, over1_5, over1_5 INTO\
var_under0, var_under1, var_under2, var_over0, var_over1, var_over2\n\t\
FROM homeScore_bins{self.surfix} WHERE team = NEW.home_team;\n\t\
INSERT INTO homeScore_dataset{self.surfix}\n\t\
VALUES (NEW.mp, NEW.date_time, NEW.home_team, NEW.away_team, var_rank, \
var_sum, var_avg, var_max, var_min, var_wSc, var_under0, var_under1, \
var_under2, var_over0, var_over1, var_over2, NEW.total_score);\n\t\
\
SELECT ranking, total_sum, total_avg, total_max, total_min, total_clS INTO \
var_rank, var_sum, var_avg, var_max, var_min, var_clS\n\t\
fROm V_homeConcede_stats{self.surfix} WHERE team = NEW.home_team;\n\t\
SELECT under0_5, under1_5, under2_5, over0_5, over1_5, over1_5 \
INTO var_under0, var_under1, var_under2, var_over0, var_over1, var_over2\n\t\
FROM homeConcede_bins{self.surfix} WHERE team = NEW.home_team;\n\t\
INSERT INTO homeConcede_dataset{self.surfix}\n\t\
VALUES (NEW.mp, NEW.date_time, NEW.home_team, NEW.away_team, var_rank, \
var_sum, var_avg, var_max, var_min, var_clS, var_under0, var_under1, \
var_under2, var_over0, var_over1, var_over2, NEW.total_concede);\n\t\
\
SELECT ranking, total_sum, total_avg, total_max, total_min, total_btts INTO \
var_rank, var_sum, var_avg, var_max, var_min, var_btts\n\t\
fROm V_homeGlobal_stats{self.surfix} WHERE team = NEW.home_team;\n\t\
SELECT under0_5, under1_5, under2_5, over0_5, over1_5, over1_5 INTO \
var_under0, var_under1, var_under2, var_over0, var_over1, var_over2\n\t\
FROM homeGlobal_bins{self.surfix} WHERE team = NEW.home_team;\n\t\
INSERT INTO homeGlobal_dataset{self.surfix} \n\t\
VALUES (NEW.mp, NEW.date_time, NEW.home_team, NEW.away_team, var_rank, \
var_sum, var_avg, var_max, var_min, var_btts, var_under0, var_under1, \
var_under2, var_over0, var_over1, var_over2, NEW.global);\n\
END //"
        TRIGGERS.append(trigger8)
        trigger9 = f"CREATE TRIGGER beforeInsert_away_results_away__dataset\
{self.surfix} BEFORE INSERT ON away_results{self.surfix} FOR EACH ROW\n\
BEGIN\n\t\
\
DECLARE var_rank, var_min, var_max, var_sum, var_wSc, var_clS, var_btts\
TINYINT UNSIGNED;\n\t\
DECLARE var_avg DECIMAL(2,1);\n\t\
DECLARE var_under0, var_under1, var_under2, var_over0, var_over1, var_over2\
TINYINT UNSIGNED;\n\t\
\
SELECT ranking, total_sum, total_avg, total_max, total_min, total_wSc INTO\
var_rank, var_sum, var_avg, var_max, var_min, var_wSc\n\t\
fROm V_awayScore_stats{self.surfix} WHERE team = NEW.away_team;\n\t\
SELECT under0_5, under1_5, under2_5, over0_5, over1_5, over1_5 INTO\
var_under0, var_under1, var_under2, var_over0, var_over1, var_over2\n\t\
FROM awayScore_bins{self.surfix} WHERE team = NEW.away_team;\n\t\
INSERT INTO awayScore_dataset{self.surfix}\n\t\
VALUES (NEW.mp, NEW.date_time, NEW.home_team, NEW.away_team, var_rank, \
var_sum, var_avg, var_max, var_min, var_wSc, var_under0, var_under1, \
var_under2, var_over0, var_over1, var_over2, NEW.total_score);\n\t\
\
SELECT ranking, total_sum, total_avg, total_max, total_min, total_clS INTO \
var_rank, var_sum, var_avg, var_max, var_min, var_clS\n\t\
fROm V_awayConcede_stats{self.surfix} WHERE team = NEW.away_team;\n\t\
SELECT under0_5, under1_5, under2_5, over0_5, over1_5, over1_5 \
INTO var_under0, var_under1, var_under2, var_over0, var_over1, var_over2\n\t\
FROM awayConcede_bins{self.surfix} WHERE team = NEW.away_team;\n\t\
INSERT INTO awayConcede_dataset{self.surfix}\n\t\
VALUES (NEW.mp, NEW.date_time, NEW.home_team, NEW.away_team, var_rank, \
var_sum, var_avg, var_max, var_min, var_clS, var_under0, var_under1, \
var_under2, var_over0, var_over1, var_over2, NEW.total_concede);\n\t\
\
SELECT ranking, total_sum, total_avg, total_max, total_min, total_btts INTO \
var_rank, var_sum, var_avg, var_max, var_min, var_btts\n\t\
fROm V_awayGlobal_stats{self.surfix} WHERE team = NEW.away_team;\n\t\
SELECT under0_5, under1_5, under2_5, over0_5, over1_5, over1_5 INTO \
var_under0, var_under1, var_under2, var_over0, var_over1, var_over2\n\t\
FROM awayGlobal_bins{self.surfix} WHERE team = NEW.away_team;\n\t\
INSERT INTO awayGlobal_dataset{self.surfix} \n\t\
VALUES (NEW.mp, NEW.date_time, NEW.home_team, NEW.away_team, var_rank, \
var_sum, var_avg, var_max, var_min, var_btts, var_under0, var_under1, \
var_under2, var_over0, var_over1, var_over2, NEW.global);\n\
END //"
        TRIGGERS.append(trigger9)
        return TRIGGERS
