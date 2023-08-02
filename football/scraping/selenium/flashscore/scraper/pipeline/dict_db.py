class Description(object):
    """Description of football database
    All of numeric columns have a default value = zero
    All columns are NOT NULL type.
    index[0] means the name of columns, index[1] represent column type
    Other definition :
        int = VARCHAR(int)
        tiU = TINYINT UNSIGNED
        Da = DATE
        De = DECIMAL(2,1)
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
                          ('1st_total_goal', 'tiU'),
                          ('2nd_home_team_goal', 'tiU'),
                          ('2nd_away_team_goal', 'tiU'),
                          ('2nd_total_goal', 'tiU'),
                          ('total_home_team_goal', 'tiU'),
                          ('total_away_team_goal', 'tiU'),
                          ('global', 'tiU'),
                          ('result', 30)],

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
                      ('away_team_goal', 'tiU'),
                      ('result', 30)],

              'overall_standing': [('team', 30, 'pKey'),
                                   ('journée', 'tiU'),
                                   ('draw', 'tiU'),
                                   ('lose', 'tiU'),
                                   ('win', 'tiU'),
                                   ('points', 'tiU'),
                                   ('scored', 'tiU'),
                                   ('conceded', 'De'),
                                   ('average', 'tiU')],

              'home_standing': [('team', 30, 'pKey', 'fKey',
                                 'overall_standing'),
                                ('journée', 'tiU'),
                                ('draw', 'tiU'),
                                ('lose', 'tiU'),
                                ('win', 'tiU'),
                                ('points', 'tiU'),
                                ('scored', 'tiU'),
                                ('conceded', 'De'),
                                ('average', 'tiU')],

              'away_standing': [('team', 30, 'pKey', 'fKey',
                                 'overall_standing'),
                                ('journée', 'tiU'),
                                ('draw', 'tiU'),
                                ('lose', 'tiU'),
                                ('win', 'tiU'),
                                ('points', 'tiU'),
                                ('scored', 'tiU'),
                                ('conceded', 'De'),
                                ('average', 'tiU')],

              'global_overall_ds': [('journée', 'tiU'),
                                    ('date_time', 'Da', 'index',
                                     'journée date_time'),
                                    ('home_team', 30),
                                    ('away_team', 30),
                                    ('journée5_ht', 'tiU'),
                                    ('journée4_ht', 'tiU'),
                                    ('journée3_ht', 'tiU'),
                                    ('journée2_ht', 'tiU'),
                                    ('journée1_ht', 'tiU'),
                                    ('journée5_at', 'tiU'),
                                    ('journée4_at', 'tiU'),
                                    ('journée3_at', 'tiU'),
                                    ('journée2_at', 'tiU'),
                                    ('journée1_at', 'tiU'),
                                    ('over0_all_ht', 'tiU'),
                                    ('over1_all_ht', 'tiU'),
                                    ('over2_all_ht', 'tiU'),
                                    ('over0_all_at', 'tiU'),
                                    ('over1_all_at', 'tiU'),
                                    ('over2_all_at', 'tiU'),
                                    ('global', 'tiU')],


              'global_ds': [('journée', 'tiU'),
                            ('date_time', 'Da', 'index',
                             'journée date_time'),
                            ('home_team', 30),
                            ('away_team', 30),
                            ('journée5_ht', 'tiU'),
                            ('journée4_ht', 'tiU'),
                            ('journée3_ht', 'tiU'),
                            ('journée2_ht', 'tiU'),
                            ('journée1_ht', 'tiU'),
                            ('journée5_at', 'tiU'),
                            ('journée4_at', 'tiU'),
                            ('journée3_at', 'tiU'),
                            ('journée2_at', 'tiU'),
                            ('journée1_at', 'tiU'),
                            ('over0_all_ht', 'tiU'),
                            ('over1_all_ht', 'tiU'),
                            ('over2_all_ht', 'tiU'),
                            ('over0_all_at', 'tiU'),
                            ('over1_all_at', 'tiU'),
                            ('over2_all_at', 'tiU'),
                            ('global', 'tiU')],

              'scored_conceded_all_ds': [('journée', 'tiU'),
                                         ('date_time', 'Da', 'index',
                                          'journée date_time'),
                                         ('home_team', 30),
                                         ('away_team', 30),
                                         ('journée5_ht', 'tiU'),
                                         ('journée4_ht', 'tiU'),
                                         ('journée3_ht', 'tiU'),
                                         ('journée2_ht', 'tiU'),
                                         ('journée1_ht', 'tiU'),
                                         ('journée5_at', 'tiU'),
                                         ('journée4_at', 'tiU'),
                                         ('journée3_at', 'tiU'),
                                         ('journée2_at', 'tiU'),
                                         ('journée1_at', 'tiU'),
                                         ('over0_scored_ht', 'tiU'),
                                         ('over1_scored_ht', 'tiU'),
                                         ('over2_scored_ht', 'tiU'),
                                         ('over0_conceded_at', 'tiU'),
                                         ('over1_conceded_at', 'tiU'),
                                         ('over2_conceded_at', 'tiU'),
                                         ('without_scoring_ht', 'tiU'),
                                         ('average_ht', 'tiU'),
                                         ('clean_sheet_at', 'tiU'),
                                         ('average_at', 'tiU'),
                                         ('total_home_team_goal', 'tiU')],


              'scored_conceded_ds': [('journée', 'tiU'),
                                     ('date_time', 'Da', 'index',
                                      'journée date_time'),
                                     ('home_team', 30),
                                     ('away_team', 30),
                                     ('journée5_ht', 'tiU'),
                                     ('journée4_ht', 'tiU'),
                                     ('journée3_ht', 'tiU'),
                                     ('journée2_ht', 'tiU'),
                                     ('journée1_ht', 'tiU'),
                                     ('journée5_at', 'tiU'),
                                     ('journée4_at', 'tiU'),
                                     ('journée3_at', 'tiU'),
                                     ('journée2_at', 'tiU'),
                                     ('journée1_at', 'tiU'),
                                     ('over0_scored_ht', 'tiU'),
                                     ('over1_scored_ht', 'tiU'),
                                     ('over2_scored_ht', 'tiU'),
                                     ('over0_conceded_at', 'tiU'),
                                     ('over1_conceded_at', 'tiU'),
                                     ('over2_conceded_at', 'tiU'),
                                     ('without_scoring_ht', 'tiU'),
                                     ('average_ht', 'tiU'),
                                     ('clean_sheet_at', 'tiU'),
                                     ('average_at', 'tiU'),
                                     ('total_home_team_goal', 'tiU')],

              'conceded_scored_all_ds': [('journée', 'tiU'),
                                         ('date_time', 'Da', 'index',
                                          'journée date_time'),
                                         ('home_team', 30),
                                         ('away_team', 30),
                                         ('journée5_ht', 'tiU'),
                                         ('journée4_ht', 'tiU'),
                                         ('journée3_ht', 'tiU'),
                                         ('journée2_ht', 'tiU'),
                                         ('journée1_ht', 'tiU'),
                                         ('journée5_at', 'tiU'),
                                         ('journée4_at', 'tiU'),
                                         ('journée3_at', 'tiU'),
                                         ('journée2_at', 'tiU'),
                                         ('journée1_at', 'tiU'),
                                         ('over0_conceded_ht', 'tiU'),
                                         ('over1_conceded_ht', 'tiU'),
                                         ('over2_conceded_ht', 'tiU'),
                                         ('over0_scored_at', 'tiU'),
                                         ('over1_scored_at', 'tiU'),
                                         ('over2_scored_at', 'tiU'),
                                         ('clean_sheet_ht', 'tiU'),
                                         ('average_ht', 'tiU'),
                                         ('without_scoring_at', 'tiU'),
                                         ('average_at', 'tiU'),
                                         ('total_away_team_goal', 'tiU')],

              'conceded_scored_ds': [('journée', 'tiU'),
                                     ('date_time', 'Da', 'index',
                                      'journée date_time'),
                                     ('home_team', 30),
                                     ('away_team', 30),
                                     ('journée5_ht', 'tiU'),
                                     ('journée4_ht', 'tiU'),
                                     ('journée3_ht', 'tiU'),
                                     ('journée2_ht', 'tiU'),
                                     ('journée1_ht', 'tiU'),
                                     ('journée5_at', 'tiU'),
                                     ('journée4_at', 'tiU'),
                                     ('journée3_at', 'tiU'),
                                     ('journée2_at', 'tiU'),
                                     ('journée1_at', 'tiU'),
                                     ('over0_conceded_ht', 'tiU'),
                                     ('over1_conceded_ht', 'tiU'),
                                     ('over2_conceded_ht', 'tiU'),
                                     ('over0_scored_at', 'tiU'),
                                     ('over1_scored_at', 'tiU'),
                                     ('over2_scored_at', 'tiU'),
                                     ('clean_sheet_ht', 'tiU'),
                                     ('average_ht', 'tiU'),
                                     ('without_scoring_at', 'tiU'),
                                     ('average_at', 'tiU'),
                                     ('total_away_team_goal', 'tiU')]}

    VIEWS = {'V_overall_standing': [('team'),
                                    ('journée'),
                                    ('draw'),
                                    ('lose'),
                                    ('win'),
                                    ('points'),
                                    ('scored'),
                                    ('conceded'),
                                    ('average')],

             'V_home_standing': [('team'),
                                 ('journée'),
                                 ('draw'),
                                 ('lose'),
                                 ('win'),
                                 ('points'),
                                 ('scored'),
                                 ('conceded'),
                                 ('average')],

             'V_away_standing': [('team'),
                                 ('journée'),
                                 ('draw'),
                                 ('lose'),
                                 ('win'),
                                 ('points'),
                                 ('scored'),
                                 ('conceded'),
                                 ('average')]}

    def write_trigger(self):
        """Description of triggers"""
        TRIGGERS = []
        # L'insertion des équipes dans homeGlobal_stats,
        # déclenche l'insertion des équipes dans les autres tables.
        afterInsert__overall_standing__team = f"CREATE TRIGGER IF NOT EXISTS \
afterInsert__overall_standing__team_{self.lig_id} AFTER INSERT ON \
{self.lig_id}_overall_standing FOR EACH ROW\n\
BEGIN\n\t\
INSERT INTO {self.lig_id}_home_standing (team)\n\t\
VALUES (NEW.team);\n\t\
INSERT INTO {self.lig_id}_away_standing (team)\n\t\
VALUES (NEW.team);\n\
END"
        TRIGGERS.append(afterInsert__overall_standing__team)
        # after insert on home_results
        # away_results is update automatically
        afterInsert__summary__result_standing = f"CREATE TRIGGER IF NOT EXISTS\
 afterInsert__summary__result_standing_{self.lig_id} AFTER INSERT ON \
{self.lig_id}_summary FOR EACH ROW\n\
BEGIN\n\t\
DECLARE var_overall_home_team_points, var_overall_away_team_points, \
var_home_team_points, var_away_team_points TINYINT UNSIGNED;\n\t\
DECLARE var_home_team_goal, var_away_team_goal TINYINT UNSIGNED;\n\t\
DECLARE var_total_win, var_total_draw, var_total_lose TINYINT UNSIGNED;\n\t\
DECLARE var_total_journée_home_team, var_total_journée_away_team \
TINYINT UNSIGNED;\n\t\
DECLARE var_total_home_team_conceded, var_total_home_team_scored, \
var_total_away_team_scored, var_total_away_team_conceded TINYINT UNSIGNED;\n\t\
DECLARE var_scored_at_home, var_scored_at_away, var_conceded_at_home, \
var_conceded_at_away TINYINT UNSIGNED;\n\t\
DECLARE var_global_average DECIMAL(2,1);\n\t\
SELECT points INTO var_overall_home_team_points\n\t\
FROM {self.lig_id}_overall_standing\n\t\
WHERE team = NEW.home_team;\n\t\
SELECT points INTO var_overall_away_team_points\n\t\
FROM {self.lig_id}_overall_standing\n\t\
WHERE team = NEW.away_team;\n\t\
SELECT points INTO var_home_team_points\n\t\
FROM {self.lig_id}_home_standing\n\t\
WHERE team = NEW.home_team;\n\t\
SELECT points INTO var_away_team_points\n\t\
FROM {self.lig_id}_away_standing\n\t\
WHERE team = NEW.away_team;\n\t\
SELECT total_home_team_goal, total_away_team_goal INTO var_home_team_goal,\
var_away_team_goal\n\t\
FROM {self.lig_id}_summary\n\t\
WHERE home_team = NEW.home_team;\n\t\
IF (var_home_team_goal > var_away_team_goal) THEN\n\t\
    UPDATE {self.lig_id}_summary\n\t\
    SET result = NEW.home_team\n\t\
    WHERE home_team = NEW.home_team;\n\t\
    UPDATE {self.lig_id}_overall_standing\n\t\
    SET points = var_overall_home_team_points + 3\n\t\
    WHERE team = NEW.home_team;\n\t\
    UPDATE {self.lig_id}_home_standing\n\t\
    SET points = var_home_team_points + 3\n\t\
    WHERE team = NEW.home_team;\n\t\
ELSEIF (var_home_team_goal < var_away_team_goal) THEN\n\t\
    UPDATE {self.lig_id}_summary \n\t\
    SET result = NEW.away_team\n\t\
    WHERE away_team = NEW.away_team;\n\t\
    UPDATE {self.lig_id}_overall_standing \n\t\
    SET points = var_overall_away_team_points + 3\n\t\
    WHERE team = NEW.away_team;\n\t\
    UPDATE {self.lig_id}_away_standing\n\t\
    SET points = var_away_team_points + 3\n\t\
    WHERE team = NEW.away_team;\n\t\
ELSE \n\t\
    UPDATE {self.lig_id}_summary\n\t\
    SET result = 'Draw'\n\t\
    WHERE home_team = NEW.home_team;\n\t\
    UPDATE {self.lig_id}_overall_standing\n\t\
    SET points = var_overall_home_team_points + 1\n\t\
    WHERE team = NEW.home_team;\n\t\
    UPDATE {self.lig_id}_overall_standing\n\t\
    SET points = var_overall_away_team_points + 1\n\t\
    WHERE team = NEW.away_team;\n\t\
    UPDATE {self.lig_id}_home_standing \n\t\
    SET points = var_home_team_points + 1\n\t\
    WHERE team = NEW.home_team;\n\t\
    UPDATE {self.lig_id}_away_standing \n\t\
    SET points = var_away_team_points + 1\n\t\
    WHERE team = NEW.away_team;\n\t\
END IF;\n\t\
SELECT COUNT(journée) INTO var_total_journée_home_team\n\t\
FROM {self.lig_id}_summary\n\t\
WHERE home_team = NEW.home_team;\n\t\
SELECT COUNT(result) INTO var_total_win\n\t\
FROM {self.lig_id}_summary\n\t\
WHERE home_team = NEW.home_team AND result = NEW.home_team;\n\t\
UPDATE {self.lig_id}_home_standing\n\t\
SET win = ((var_total_win / total_journée_home) * 100)\n\t\
WHERE team = NEW.home_team;\n\t\
SELECT COUNT(result) INTO var_total_lose\n\t\
FROM {self.lig_id}_summary\n\t\
WHERE home_team = NEW.home_team AND result = NEW.away_team;\n\t\
UPDATE {self.lig_id}_home_standing\n\t\
SET lose = ((var_total_lose / total_journée_home) * 100)\n\t\
WHERE team = NEW.home_team;\n\t\
SELECT COUNT(result) INTO var_total_draw\n\t\
FROM {self.lig_id}_summary\n\t\
WHERE home_team = NEW.home_team AND result = 'Draw';\n\t\
UPDATE {self.lig_id}_home_standing\n\t\
SET draw = ((var_total_draw / total_journée_home) * 100)\n\t\
WHERE team = NEW.home_team;\n\t\
SELECT SUM(total_home_goal) INTO var_total_home_team_scored \n\t\
FROM {self.lig_id}_summary\n\t\
WHERE home_team = NEW.home_team;\n\t\
UPDATE {self.lig_id}_home_standing\n\t\
SET scored = var_total_home_team_scored\n\t\
WHERE team = NEW.home_team;\n\t\
SELECT SUM(total_away_goal) INTO var_total_away_team_conceded\n\t\
FROM {self.lig_id}_summary\n\t\
WHERE home_team = NEW.home_team;\n\t\
UPDATE {self.lig_id}_home_standing\n\t\
SET conceded = var_total_away_team_conceded\n\t\
WHERE team = NEW.home_team;\n\t\
SELECT AVG(global) INTO var_global_average\n\t\
FROM {self.lig_id}_summary\n\t\
WHERE home_team = NEW.home_team;\n\t\
UPDATE {self.lig_id}_home_standing\n\t\
SET average = var_global_average\n\t\
WHERE team = NEW.home_team; \n\t\
\
SELECT COUNT(away_team) INTO var_total_journée_away_team\n\t\
FROM {self.lig_id}_summary\n\t\
WHERE away_team = NEW.away_team;\n\t\
SELECT COUNT(result) INTO var_total_win\n\t\
FROM {self.lig_id}_summary\n\t\
WHERE away_team = NEW.away_team AND result = NEW.away_team;\n\t\
UPDATE {self.lig_id}_away_standing\n\t\
SET win = ((var_total_win / total_mp) * 100)\n\t\
WHERE team = NEW.away_team;\n\t\
SELECT COUNT(result) INTO var_total_lose\n\t\
FROM {self.lig_id}_summary\n\t\
WHERE away_team = NEW.away_team AND result = NEW.home_team;\n\t\
UPDATE {self.lig_id}_away_standing\n\t\
SET lose = ((var_total_lose / total_mp) * 100)\n\t\
WHERE team = NEW.away_team;\n\t\
SELECT COUNT(result) INTO var_total_draw\n\t\
FROM {self.lig_id}_summary\n\t\
WHERE away_team = NEW.away_team AND result = 'Draw';\n\t\
UPDATE {self.lig_id}_away_standing\n\t\
SET draw = ((var_total_draw / total_mp) * 100)\n\t\
WHERE team = NEW.away_team;\n\t\
SELECT SUM(total_away_goal) INTO var_total_away_team_scored \n\t\
FROM {self.lig_id}_summary\n\t\
WHERE away_team = NEW.away_team;\n\t\
UPDATE {self.lig_id}_away_standing\n\t\
SET scored = var_total_away_team_scored\n\t\
WHERE team = NEW.away_team;\n\t\
SELECT SUM(total_home_goal) INTO var_total_away_team_conceded \n\t\
FROM {self.lig_id}_summary\n\t\
WHERE away_team = NEW.away_team;\n\t\
UPDATE {self.lig_id}_away_standing\n\t\
SET conceded = var_total_away_team_conceded\n\t\
WHERE team = NEW.away_team;\n\t\
SELECT AVG(global) INTO var_global_average\n\t\
FROM {self.lig_id}_summary\n\t\
WHERE away_team = NEW.away_team;\n\t\
UPDATE {self.lig_id}_away_standing\n\t\
SET average = var_global_average\n\t\
WHERE team = NEW.away_team; \n\t\
\
SELECT COUNT(journée) INTO var_total_journée_home_team\n\t\
FROM {self.lig_id}_summary\n\t\
WHERE home_team = NEW.home_team OR away_team = NEW.home_team;\n\t\
SELECT COUNT(result) INTO var_total_win\n\t\
FROM {self.lig_id}_summary\n\t\
WHERE (home_team = NEW.home_team OR away_team = NEW.home_team) \
AND result = NEW.home_team;\n\t\
UPDATE {self.lig_id}_overall_standing\n\t\
SET win = ((var_total_win / var_total_journée_home_team) * 100)\n\t\
WHERE team = NEW.home_team;\n\t\
SELECT COUNT(result) INTO var_total_lose\n\t\
FROM {self.lig_id}_summary\n\t\
WHERE (home_team = NEW.home_team OR away_team = NEW.home_team) \
AND result = NEW.away_team;\n\t\
UPDATE {self.lig_id}_overall_standing\n\t\
SET lose = ((var_total_lose / var_total_journée_home_team) * 100)\n\t\
WHERE team = NEW.home_team;\n\t\
SELECT COUNT(result) INTO var_total_draw\n\t\
FROM {self.lig_id}_summary\n\t\
WHERE (home_team = NEW.home_team OR away_team = NEW.home_team) \
AND result = 'Draw';\n\t\
UPDATE {self.lig_id}_overall_standing\n\t\
SET draw = ((var_total_draw / var_total_journée_home_team) * 100)\n\t\
WHERE team = NEW.home_team;\n\t\
SELECT scored, conceded INTO var_scored_at_home, var_conceded_at_home\n\t\
FROM {self.lig_id}_home_standing\n\t\
WHERE team = NEW.home_team;\n\t\
SELECT scored, conceded INTO var_scored_at_away, var_conceded_at_away\n\t\
FROM {self.lig_id}_away_standing\n\t\
WHERE team = NEW.home_team;\n\t\
UPDATE {self.lig_id}_overall_standing\n\t\
SET scored = (scored_at_home + scored_at_away)\n\t\
WHERE team = NEW.home_team;\n\t\
UPDATE {self.lig_id}_overall_standing\n\t\
SET conceded = (conceded_at_home + conceded_at_away)\n\t\
WHERE team = NEW.home_team;\n\t\
SELECT AVG(global) INTO var_global_average\n\t\
FROM {self.lig_id}_summary\n\t\
WHERE home_team = NEW.home_team OR away_team = NEW.home_team;\n\t\
UPDATE {self.lig_id}_overall_standing\n\t\
SET average = var_global_average\n\t\
WHERE team = NEW.home_team; \n\t\
\
SELECT COUNT(journée) INTO var_total_journée_away_team\n\t\
FROM {self.lig_id}_summary\n\t\
WHERE home_team = NEW.away_team OR away_team = NEW.away_team;\n\t\
SELECT COUNT(result) INTO var_total_win\n\t\
FROM {self.lig_id}_summary\n\t\
WHERE (home_team = NEW.away_team OR away_team = NEW.away_team) \
AND result = NEW.away_team;\n\t\
UPDATE {self.lig_id}_overall_standing\n\t\
SET win = ((var_total_win / var_total_journée_away_team) * 100)\n\t\
WHERE team = NEW.away_team;\n\t\
SELECT COUNT(result) INTO var_total_lose\n\t\
FROM {self.lig_id}_summary\n\t\
WHERE (home_team = NEW.away_team OR away_team = NEW.away_team) \
AND result = NEW.home_team;\n\t\
UPDATE {self.lig_id}_overall_standing\n\t\
SET lose = ((var_total_lose / var_total_journée_away_team) * 100)\n\t\
WHERE team = NEW.away_team;\n\t\
SELECT COUNT(result) INTO var_total_draw\n\t\
FROM {self.lig_id}_summary\n\t\
WHERE (home_team = NEW.away_team OR away_team = NEW.away_team) \
AND result = 'Draw';\n\t\
UPDATE {self.lig_id}_overall_standing\n\t\
SET draw = ((var_total_draw / var_total_journée_away_team) * 100)\n\t\
WHERE team = NEW.away_team;\n\t\
SELECT scored, conceded INTO var_scored_at_home, var_conceded_at_home\n\t\
FROM {self.lig_id}_home_standing\n\t\
WHERE team = NEW.away_team;\n\t\
SELECT scored, conceded INTO var_scored_at_away, var_conceded_at_away\n\t\
FROM {self.lig_id}_away_standing\n\t\
WHERE team = NEW.away_team;\n\t\
UPDATE {self.lig_id}_overall_standing\n\t\
SET scored = (var_scored_at_home + var_scored_at_away)\n\t\
WHERE team = NEW.away_team;\n\t\
UPDATE {self.lig_id}_overall_standing\n\t\
SET conceded = (var_conceded_at_home + var_conceded_at_away)\n\t\
WHERE team = NEW.away_team;\n\t\
SELECT AVG(global) INTO var_global_average\n\t\
FROM {self.lig_id}_summary\n\t\
WHERE home_team = NEW.away_team OR away_team = NEW.away_team;\n\t\
UPDATE {self.lig_id}_overall_standing\n\t\
SET average = var_global_average\n\t\
WHERE team = NEW.away_team; \n\t\
END"
        TRIGGERS.append(afterInsert__summary__result_standing)
        # déclenche un série d'operations pour remplir les tables statistiques
        # apres l'insertion des résultats a domicile
        beforeInsert__summary__global_overall_ds = f"CREATE TRIGGER \
IF NOT EXISTS beforeInsert__summary__global_overall_ds_{self.lig_id} \
BEFORE INSERT ON {self.lig_id}_summary FOR EACH ROW\nBEGIN\n\t\
DECLARE current_journée_var, journée1_ht, journée2_ht, journée3_ht, \
journée4_ht, journée5_ht, journée1_at, journée2_at, journée3_at, \
journée4_at, journée5_at, var_total_journée TINYINT;\n\t\
DECLARE var_over0_all_ht, var_over1_all_ht, var_over2_all_ht, var_over0_all_at\
, var_over1_all_at, var_over2_all_at TINYINT UNSIGNED;\n\t\
DECLARE var_over0, var_over1, var_over2, average_ht, average_at, ONEorZERO \
TINYINT UNSIGNED;\n\t\
CREATE OR REPLACE TEMPORARY TABLE temp_tab\n\t\
SELECT journée, global FROM {self.lig_id}_summary\n\t\
WHERE home_team = NEW.home_team OR away_team = NEW.home_team \
ORDER BY date_time DESC LIMIT 5;\n\t\
SELECT MAX(journée) INTO current_journée_var\n\t\
FROM temp_tab;\n\t\
SELECT AVG(global) INTO average_ht\n\t\
FROM temp_tab;\n\t\
SELECT global INTO journée1_ht\n\t\
FROM temp_tab WHERE journée = current_journée_var;\n\t\
SELECT ISNULL(journée1_ht) INTO ONEorZERO;\n\t\
IF ONEorZERO = 1 THEN\n\t\
    SET journée1_ht = average_ht;\n\t\
END IF;\n\t\
SELECT global INTO journée2_ht\n\t\
FROM temp_tab WHERE journée = (current_journée_var - 1);\n\t\
SELECT ISNULL(journée2_ht) INTO ONEorZERO;\n\t\
IF ONEorZERO = 1 THEN\n\t\
    SET journée2_ht = average_ht;\n\t\
END IF;\n\t\
SELECT global INTO journée3_ht\n\t\
FROM temp_tab WHERE journée = (current_journée_var - 2);\n\t\
SELECT ISNULL(journée3_ht) INTO ONEorZERO;\n\t\
IF ONEorZERO = 1 THEN\n\t\
    SET journée3_ht = average_ht;\n\t\
END IF;\n\t\
SELECT global INTO journée4_ht\n\t\
FROM temp_tab WHERE journée = (current_journée_var - 3);\n\t\
SELECT ISNULL(journée4_ht) INTO ONEorZERO;\n\t\
IF ONEorZERO = 1 THEN\n\t\
    SET journée4_ht = average_ht;\n\t\
END IF;\n\t\
SELECT global INTO journée5_ht\n\t\
FROM temp_tab WHERE journée = (current_journée_var - 4);\n\t\
SELECT ISNULL(journée5_ht) INTO ONEorZERO;\n\t\
IF ONEorZERO = 1 THEN\n\t\
    SET journée5_ht = average_ht;\n\t\
END IF;\n\t\
SELECT COUNT(journée) INTO var_total_journée\n\t\
FROM temp_tab; \n\t\
SELECT COUNT(journée) INTO var_over0\n\t\
FROM temp_tab WHERE (global > 0);\n\t\
SET var_over0_all_ht = ((var_over0 / var_total_journée)* 100);\n\t\
SELECT COUNT(journée) INTO var_over1\n\t\
FROM temp_tab WHERE (global > 1);\n\t\
SET var_over1_all_ht = ((var_over1 / var_total_journée)* 100);\n\t\
SELECT COUNT(journée) INTO var_over2\n\t\
FROM temp_tab WHERE (global > 2);\n\t\
SET var_over2_all_ht = ((var_over2 / var_total_journée)* 100);\n\t\
\
CREATE OR REPLACE TEMPORARY TABLE temp_tab_away\n\t\
SELECT journée, global FROM {self.lig_id}_summary\n\t\
WHERE away_team = NEW.away_team OR home_team = NEW.away_team \
ORDER BY date_time DESC LIMIT 5;\n\t\
SELECT MAX(journée) INTO current_journée_var\n\t\
FROM temp_tab_away;\n\t\
SELECT AVG(global) INTO average_at\n\t\
FROM temp_tab_away;\n\t\
SELECT global INTO journée1_at\n\t\
FROM temp_tab_away WHERE journée = current_journée_var;\n\t\
SELECT ISNULL(journée1_at) INTO ONEorZERO;\n\t\
IF ONEorZERO = 1 THEN\n\t\
    SET journée1_at = average_at;\n\t\
END IF;\n\t\
SELECT global INTO journée2_at\n\t\
FROM temp_tab_away WHERE journée = (current_journée_var - 1);\n\t\
SELECT ISNULL(journée2_at) INTO ONEorZERO;\n\t\
IF ONEorZERO = 1 THEN\n\t\
    SET journée2_at = average_at;\n\t\
END IF;\n\t\
SELECT global INTO journée3_at\n\t\
FROM temp_tab_away WHERE journée = (current_journée_var - 2);\n\t\
SELECT ISNULL(journée3_at) INTO ONEorZERO;\n\t\
IF ONEorZERO = 1 THEN\n\t\
    SET journée3_at = average_at;\n\t\
END IF;\n\t\
SELECT global INTO journée4_at\n\t\
FROM temp_tab_away WHERE journée = (current_journée_var - 3);\n\t\
SELECT ISNULL(journée4_at) INTO ONEorZERO;\n\t\
IF ONEorZERO = 1 THEN\n\t\
    SET journée4_at = average_at;\n\t\
END IF;\n\t\
SELECT global INTO journée5_at\n\t\
FROM temp_tab_away WHERE journée = (current_journée_var - 4);\n\t\
SELECT ISNULL(journée5_at) INTO ONEorZERO;\n\t\
IF ONEorZERO = 1 THEN\n\t\
    SET journée5_at = average_at;\n\t\
END IF;\n\t\
SELECT COUNT(journée) INTO var_total_journée\n\t\
FROM temp_tab_away; \n\t\
SELECT COUNT(journée) INTO var_over0\n\t\
FROM temp_tab_away WHERE (global > 0);\n\t\
SET var_over0_all_at = ((var_over0 / var_total_journée)* 100);\n\t\
SELECT COUNT(journée) INTO var_over1\n\t\
FROM temp_tab_away WHERE (global > 1);\n\t\
SET var_over1_all_at = ((var_over1 / var_total_journée)* 100);\n\t\
SELECT COUNT(journée) INTO var_over2\n\t\
FROM temp_tab_away WHERE (global > 2);\n\t\
SET var_over2_all_at = ((var_over2 / var_total_journée)* 100);\n\t\
INSERT INTO {self.lig_id}_global_overall_ds\n\t\
VALUES (NEW.journée, NEW.date_time, NEW.home_team, NEW.away_team, \
journée5_ht, journée4_ht, journée3_ht, journée2_ht, journée1_ht, \
journée5_at, journée4_at, journée3_at, journée2_at, journée1_at, \
var_over0_all_ht, var_over1_all_ht, var_over2_all_ht, var_over0_all_at, \
var_over1_all_at, var_over2_all_at,\
NEW.global);\n\
END"
        TRIGGERS.append(beforeInsert__summary__global_overall_ds)
        # déclenche un série d'operations pour remplir les tables statistiques
        # apres l'insertion des résultats a l'exterieur
        beforeInsert__summary__global_ds = f"CREATE TRIGGER IF NOT EXISTS \
beforeInsert__summary__global_ds_{self.lig_id} BEFORE INSERT ON \
{self.lig_id}_summary FOR EACH ROW\nBEGIN\n\t\
DECLARE current_journée_var, journée1_ht, journée2_ht, journée3_ht, \
journée4_ht, journée5_ht, journée1_at, journée2_at, journée3_at, \
journée4_at, journée5_at, var_total_journée TINYINT;\n\t\
DECLARE var_over0_all_ht, var_over1_all_ht, var_over2_all_ht, var_over0_all_at\
, var_over1_all_at, var_over2_all_at TINYINT UNSIGNED;\n\t\
DECLARE var_over0, var_over1, var_over2, average_ht, average_at, ONEorZERO \
TINYINT UNSIGNED;\n\t\
CREATE OR REPLACE TEMPORARY TABLE temp_tab\n\t\
SELECT journée, global FROM {self.lig_id}_summary\n\t\
WHERE home_team = NEW.home_team \
ORDER BY date_time DESC LIMIT 5;\n\t\
SELECT MAX(journée) INTO current_journée_var\n\t\
FROM temp_tab;\n\t\
SELECT AVG(global) INTO average_ht\n\t\
FROM temp_tab;\n\t\
SELECT global INTO journée1_ht\n\t\
FROM temp_tab WHERE journée = current_journée_var;\n\t\
SELECT ISNULL(journée1_ht) INTO ONEorZERO;\n\t\
IF ONEorZERO = 1 THEN\n\t\
    SET journée1_ht = average_ht;\n\t\
END IF;\n\t\
SELECT global INTO journée2_ht\n\t\
FROM temp_tab WHERE journée = (current_journée_var - 1);\n\t\
SELECT ISNULL(journée2_ht) INTO ONEorZERO;\n\t\
IF ONEorZERO = 1 THEN\n\t\
    SET journée2_ht = average_ht;\n\t\
END IF;\n\t\
SELECT global INTO journée3_ht\n\t\
FROM temp_tab WHERE journée = (current_journée_var - 2);\n\t\
SELECT ISNULL(journée3_ht) INTO ONEorZERO;\n\t\
IF ONEorZERO = 1 THEN\n\t\
    SET journée3_ht = average_ht;\n\t\
END IF;\n\t\
SELECT global INTO journée4_ht\n\t\
FROM temp_tab WHERE journée = (current_journée_var - 3);\n\t\
SELECT ISNULL(journée4_ht) INTO ONEorZERO;\n\t\
IF ONEorZERO = 1 THEN\n\t\
    SET journée4_ht = average_ht;\n\t\
END IF;\n\t\
SELECT global INTO journée5_ht\n\t\
FROM temp_tab WHERE journée = (current_journée_var - 4);\n\t\
SELECT ISNULL(journée5_ht) INTO ONEorZERO;\n\t\
IF ONEorZERO = 1 THEN\n\t\
    SET journée5_ht = average_ht;\n\t\
END IF;\n\t\
SELECT COUNT(journée) INTO var_total_journée\n\t\
FROM temp_tab; \n\t\
SELECT COUNT(journée) INTO var_over0\n\t\
FROM temp_tab WHERE (global > 0);\n\t\
SET var_over0_all_ht = ((var_over0 / var_total_journée)* 100);\n\t\
SELECT COUNT(journée) INTO var_over1\n\t\
FROM temp_tab WHERE (global > 1);\n\t\
SET var_over1_all_ht = ((var_over1 / var_total_journée)* 100);\n\t\
SELECT COUNT(journée) INTO var_over2\n\t\
FROM temp_tab WHERE (global > 2);\n\t\
SET var_over2_all_ht = ((var_over2 / var_total_journée)* 100);\n\t\
\
CREATE OR REPLACE TEMPORARY TABLE temp_tab_away\n\t\
SELECT journée, global FROM {self.lig_id}_summary\n\t\
WHERE away_team = NEW.away_team \
ORDER BY date_time DESC LIMIT 5;\n\t\
SELECT MAX(journée) INTO current_journée_var\n\t\
FROM temp_tab_away;\n\t\
SELECT AVG(global) INTO average_at\n\t\
FROM temp_tab_away;\n\t\
SELECT global INTO journée1_at\n\t\
FROM temp_tab_away WHERE journée = current_journée_var;\n\t\
SELECT ISNULL(journée1_at) INTO ONEorZERO;\n\t\
IF ONEorZERO = 1 THEN\n\t\
    SET journée1_at = average_at;\n\t\
END IF;\n\t\
SELECT global INTO journée2_at\n\t\
FROM temp_tab_away WHERE journée = (current_journée_var - 1);\n\t\
SELECT ISNULL(journée2_at) INTO ONEorZERO;\n\t\
IF ONEorZERO = 1 THEN\n\t\
    SET journée2_at = average_at;\n\t\
END IF;\n\t\
SELECT global INTO journée3_at\n\t\
FROM temp_tab_away WHERE journée = (current_journée_var - 2);\n\t\
SELECT ISNULL(journée3_at) INTO ONEorZERO;\n\t\
IF ONEorZERO = 1 THEN\n\t\
    SET journée3_at = average_at;\n\t\
END IF;\n\t\
SELECT global INTO journée4_at\n\t\
FROM temp_tab_away WHERE journée = (current_journée_var - 3);\n\t\
SELECT ISNULL(journée4_at) INTO ONEorZERO;\n\t\
IF ONEorZERO = 1 THEN\n\t\
    SET journée4_at = average_at;\n\t\
END IF;\n\t\
SELECT global INTO journée5_at\n\t\
FROM temp_tab_away WHERE journée = (current_journée_var - 4);\n\t\
SELECT ISNULL(journée5_at) INTO ONEorZERO;\n\t\
IF ONEorZERO = 1 THEN\n\t\
    SET journée5_at = average_at;\n\t\
END IF;\n\t\
SELECT COUNT(journée) INTO var_total_journée\n\t\
FROM temp_tab_away; \n\t\
SELECT COUNT(journée) INTO var_over0\n\t\
FROM temp_tab_away WHERE (global > 0);\n\t\
SET var_over0_all_at = ((var_over0 / var_total_journée)* 100);\n\t\
SELECT COUNT(journée) INTO var_over1\n\t\
FROM temp_tab_away WHERE (global > 1);\n\t\
SET var_over1_all_at = ((var_over1 / var_total_journée)* 100);\n\t\
SELECT COUNT(journée) INTO var_over2\n\t\
FROM temp_tab_away WHERE (global > 2);\n\t\
SET var_over2_all_at = ((var_over2 / var_total_journée)* 100);\n\t\
INSERT INTO {self.lig_id}_global_overall_ds\n\t\
VALUES (NEW.journée, NEW.date_time, NEW.home_team, NEW.away_team, \
journée5_ht, journée4_ht, journée3_ht, journée2_ht, journée1_ht, \
journée5_at, journée4_at, journée3_at, journée2_at, journée1_at, \
var_over0_all_ht, var_over1_all_ht, var_over2_all_ht, var_over0_all_at, \
var_over1_all_at, var_over2_all_at,\
NEW.global);\n\
END"
        TRIGGERS.append(beforeInsert__summary__global_ds)
        # comment on what do this following trigger
        beforeInsert__sumary__scored_conceded_all_ds = f"CREATE TRIGGER \
IF NOT EXISTS beforeInsert__summary__scored_conceded_all_ds_{self.lig_id} \
BEFORE INSERT ON {self.lig_id}_summary FOR EACH ROW\nBEGIN\n\t\
DECLARE current_journée_var, journée1_ht, journée2_ht, journée3_ht, \
journée4_ht, journée5_ht, journée1_at, journée2_at, journée3_at, \
journée4_at, journée5_at, var_total_journée TINYINT;\n\t\
DECLARE var_over0_scored_ht, var_over1_scored_ht, var_over2_scored_ht, \
var_over0_conceded_at, var_over1_conceded_at, var_over2_conceded_at \
TINYINT UNSIGNED;\n\t\
DECLARE var_over0, var_over1, var_over2, average_ht, average_at, ONEorZERO, \
var_w_scoring, var_clean_sheet TINYINT UNSIGNED;\n\t\
CREATE OR REPLACE TEMPORARY TABLE temp_tab\n\t\
SELECT journée, total_home_team_goal FROM {self.lig_id}_summary\n\t\
WHERE home_team = NEW.home_team OR away_team = NEW.home_team \
ORDER BY date_time DESC LIMIT 5;\n\t\
SELECT MAX(journée) INTO current_journée_var\n\t\
FROM temp_tab;\n\t\
SELECT AVG(total_home_team_goal) INTO average_ht\n\t\
FROM temp_tab;\n\t\
SELECT total_home_team_goal INTO journée1_ht\n\t\
FROM temp_tab WHERE journée = current_journée_var;\n\t\
SELECT ISNULL(journée1_ht) INTO ONEorZERO;\n\t\
IF ONEorZERO = 1 THEN\n\t\
    SET journée1_ht = average_ht;\n\t\
END IF;\n\t\
SELECT total_home_team_goal INTO journée2_ht\n\t\
FROM temp_tab WHERE journée = (current_journée_var - 1);\n\t\
SELECT ISNULL(journée2_ht) INTO ONEorZERO;\n\t\
IF ONEorZERO = 1 THEN\n\t\
    SET journée2_ht = average_ht;\n\t\
END IF;\n\t\
SELECT total_home_team_goal INTO journée3_ht\n\t\
FROM temp_tab WHERE journée = (current_journée_var - 2);\n\t\
SELECT ISNULL(journée3_ht) INTO ONEorZERO;\n\t\
IF ONEorZERO = 1 THEN\n\t\
    SET journée3_ht = average_ht;\n\t\
END IF;\n\t\
SELECT total_home_team_goal INTO journée4_ht\n\t\
FROM temp_tab WHERE journée = (current_journée_var - 3);\n\t\
SELECT ISNULL(journée4_ht) INTO ONEorZERO;\n\t\
IF ONEorZERO = 1 THEN\n\t\
    SET journée4_ht = average_ht;\n\t\
END IF;\n\t\
SELECT total_home_team_goal INTO journée5_ht\n\t\
FROM temp_tab WHERE journée = (current_journée_var - 4);\n\t\
SELECT ISNULL(journée5_ht) INTO ONEorZERO;\n\t\
IF ONEorZERO = 1 THEN\n\t\
    SET journée5_ht = average_ht;\n\t\
END IF;\n\t\
SELECT COUNT(journée) INTO var_total_journée\n\t\
FROM temp_tab; \n\t\
SELECT COUNT(journée) INTO var_over0\n\t\
FROM temp_tab WHERE (total_home_team_goal > 0);\n\t\
SET var_over0_scored_ht = ((var_over0 / var_total_journée)* 100);\n\t\
SELECT COUNT(journée) INTO var_over1\n\t\
FROM temp_tab WHERE (total_home_team_goal > 1);\n\t\
SET var_over1_scored_ht = ((var_over1 / var_total_journée)* 100);\n\t\
SELECT COUNT(journée) INTO var_over2\n\t\
FROM temp_tab WHERE (total_home_team_goal > 2);\n\t\
SET var_over2_scored_ht = ((var_over2 / var_total_journée)* 100);\n\t\
SELECT COUNT(journée) INTO var_w_scoring\n\t\
FROM temp_tab WHERE (total_home_team_goal = 0);\n\t\
\
CREATE OR REPLACE TEMPORARY TABLE temp_tab_away\n\t\
SELECT journée, total_home_team_goal FROM {self.lig_id}_summary\n\t\
WHERE away_team = NEW.away_team OR home_team = NEW.away_team \
ORDER BY date_time DESC LIMIT 5;\n\t\
SELECT MAX(journée) INTO current_journée_var\n\t\
FROM temp_tab_away;\n\t\
SELECT AVG(total_home_team_goal) INTO average_at\n\t\
FROM temp_tab_away;\n\t\
SELECT total_home_team_goal INTO journée1_at\n\t\
FROM temp_tab_away WHERE journée = current_journée_var;\n\t\
SELECT ISNULL(journée1_at) INTO ONEorZERO;\n\t\
IF ONEorZERO = 1 THEN\n\t\
    SET journée1_at = average_at;\n\t\
END IF;\n\t\
SELECT total_home_team_goal INTO journée2_at\n\t\
FROM temp_tab_away WHERE journée = (current_journée_var - 1);\n\t\
SELECT ISNULL(journée2_at) INTO ONEorZERO;\n\t\
IF ONEorZERO = 1 THEN\n\t\
    SET journée2_at = average_at;\n\t\
END IF;\n\t\
SELECT total_home_team_goal INTO journée3_at\n\t\
FROM temp_tab_away WHERE journée = (current_journée_var - 2);\n\t\
SELECT ISNULL(journée3_at) INTO ONEorZERO;\n\t\
IF ONEorZERO = 1 THEN\n\t\
    SET journée3_at = average_at;\n\t\
END IF;\n\t\
SELECT total_home_team_goal INTO journée4_at\n\t\
FROM temp_tab_away WHERE journée = (current_journée_var - 3);\n\t\
SELECT ISNULL(journée4_at) INTO ONEorZERO;\n\t\
IF ONEorZERO = 1 THEN\n\t\
    SET journée4_at = average_at;\n\t\
END IF;\n\t\
SELECT total_home_team_goal INTO journée5_at\n\t\
FROM temp_tab_away WHERE journée = (current_journée_var - 4);\n\t\
SELECT ISNULL(journée5_at) INTO ONEorZERO;\n\t\
IF ONEorZERO = 1 THEN\n\t\
    SET journée5_at = average_at;\n\t\
END IF;\n\t\
SELECT COUNT(journée) INTO var_total_journée\n\t\
FROM temp_tab_away; \n\t\
SELECT COUNT(journée) INTO var_over0\n\t\
FROM temp_tab_away WHERE (total_home_team_goal > 0);\n\t\
SET var_over0_conceded_at = ((var_over0 / var_total_journée)* 100);\n\t\
SELECT COUNT(journée) INTO var_over1\n\t\
FROM temp_tab_away WHERE (total_home_team_goal > 1);\n\t\
SET var_over1_conceded_at = ((var_over1 / var_total_journée)* 100);\n\t\
SELECT COUNT(journée) INTO var_over2\n\t\
FROM temp_tab_away WHERE (total_home_team_goal > 2);\n\t\
SET var_over2_conceded_at = ((var_over2 / var_total_journée)* 100);\n\t\
SELECT COUNT(journée) INTO var_clean_sheet\n\t\
FROM temp_tab_away WHERE (total_home_team_goal = 0);\n\t\
INSERT INTO {self.lig_id}_scored_conceded_all_ds\n\t\
VALUES (NEW.journée, NEW.date_time, NEW.home_team, NEW.away_team, \
journée5_ht, journée4_ht, journée3_ht, journée2_ht, journée1_ht, \
journée5_at, journée4_at, journée3_at, journée2_at, journée1_at, \
var_over0_scored_ht, var_over1_scored_ht, var_over2_scored_ht, \
var_over0_conceded_at, var_over1_conceded_at, var_over2_conceded_at,\
var_w_scoring, average_ht, var_clean_sheet, average_at, \
NEW.total_home_team_goal);\n\
END"
        TRIGGERS.append(beforeInsert__sumary__scored_conceded_all_ds)
        # comment
        beforeInsert__sumary__scored_conceded_ds = f"CREATE TRIGGER \
IF NOT EXISTS beforeInsert__summary__scored_conceded_ds_{self.lig_id} \
BEFORE INSERT ON {self.lig_id}_summary FOR EACH ROW\nBEGIN\n\t\
DECLARE current_journée_var, journée1_ht, journée2_ht, journée3_ht, \
journée4_ht, journée5_ht, journée1_at, journée2_at, journée3_at, \
journée4_at, journée5_at, var_total_journée TINYINT;\n\t\
DECLARE var_over0_scored_ht, var_over1_scored_ht, var_over2_scored_ht, \
var_over0_conceded_at, var_over1_conceded_at, var_over2_conceded_at \
TINYINT UNSIGNED;\n\t\
DECLARE var_over0, var_over1, var_over2, average_ht, average_at, ONEorZERO \
, var_w_scoring, var_clean_sheet TINYINT UNSIGNED;\n\t\
CREATE OR REPLACE TEMPORARY TABLE temp_tab\n\t\
SELECT journée, total_home_team_goal FROM {self.lig_id}_summary\n\t\
WHERE home_team = NEW.home_team \
ORDER BY date_time DESC LIMIT 5;\n\t\
SELECT MAX(journée) INTO current_journée_var\n\t\
FROM temp_tab;\n\t\
SELECT AVG(total_home_team_goal) INTO average_ht\n\t\
FROM temp_tab;\n\t\
SELECT total_home_team_goal INTO journée1_ht\n\t\
FROM temp_tab WHERE journée = current_journée_var;\n\t\
SELECT ISNULL(journée1_ht) INTO ONEorZERO;\n\t\
IF ONEorZERO = 1 THEN\n\t\
    SET journée1_ht = average_ht;\n\t\
END IF;\n\t\
SELECT total_home_team_goal INTO journée2_ht\n\t\
FROM temp_tab WHERE journée = (current_journée_var - 1);\n\t\
SELECT ISNULL(journée2_ht) INTO ONEorZERO;\n\t\
IF ONEorZERO = 1 THEN\n\t\
    SET journée2_ht = average_ht;\n\t\
END IF;\n\t\
SELECT total_home_team_goal INTO journée3_ht\n\t\
FROM temp_tab WHERE journée = (current_journée_var - 2);\n\t\
SELECT ISNULL(journée3_ht) INTO ONEorZERO;\n\t\
IF ONEorZERO = 1 THEN\n\t\
    SET journée3_ht = average_ht;\n\t\
END IF;\n\t\
SELECT total_home_team_goal INTO journée4_ht\n\t\
FROM temp_tab WHERE journée = (current_journée_var - 3);\n\t\
SELECT ISNULL(journée4_ht) INTO ONEorZERO;\n\t\
IF ONEorZERO = 1 THEN\n\t\
    SET journée4_ht = average_ht;\n\t\
END IF;\n\t\
SELECT total_home_team_goal INTO journée5_ht\n\t\
FROM temp_tab WHERE journée = (current_journée_var - 4);\n\t\
SELECT ISNULL(journée5_ht) INTO ONEorZERO;\n\t\
IF ONEorZERO = 1 THEN\n\t\
    SET journée5_ht = average_ht;\n\t\
END IF;\n\t\
SELECT COUNT(journée) INTO var_total_journée\n\t\
FROM temp_tab; \n\t\
SELECT COUNT(journée) INTO var_over0\n\t\
FROM temp_tab WHERE (total_home_team_goal > 0);\n\t\
SET var_over0_scored_ht = ((var_over0 / var_total_journée)* 100);\n\t\
SELECT COUNT(journée) INTO var_over1\n\t\
FROM temp_tab WHERE (total_home_team_goal > 1);\n\t\
SET var_over1_scored_ht = ((var_over1 / var_total_journée)* 100);\n\t\
SELECT COUNT(journée) INTO var_over2\n\t\
FROM temp_tab WHERE (total_home_team_goal > 2);\n\t\
SET var_over2_scored_ht = ((var_over2 / var_total_journée)* 100);\n\t\
SELECT COUNT(journée) INTO var_w_scoring\n\t\
FROM temp_tab WHERE (total_home_team_goal = 0);\n\t\
\
CREATE OR REPLACE TEMPORARY TABLE temp_tab_away\n\t\
SELECT journée, total_home_team_goal FROM {self.lig_id}_summary\n\t\
WHERE away_team = NEW.away_team \
ORDER BY date_time DESC LIMIT 5;\n\t\
SELECT MAX(journée) INTO current_journée_var\n\t\
FROM temp_tab_away;\n\t\
SELECT AVG(total_home_team_goal) INTO average_at\n\t\
FROM temp_tab_away;\n\t\
SELECT total_home_team_goal INTO journée1_at\n\t\
FROM temp_tab_away WHERE journée = current_journée_var;\n\t\
SELECT ISNULL(journée1_at) INTO ONEorZERO;\n\t\
IF ONEorZERO = 1 THEN\n\t\
    SET journée1_at = average_at;\n\t\
END IF;\n\t\
SELECT total_home_team_goal INTO journée2_at\n\t\
FROM temp_tab_away WHERE journée = (current_journée_var - 1);\n\t\
SELECT ISNULL(journée2_at) INTO ONEorZERO;\n\t\
IF ONEorZERO = 1 THEN\n\t\
    SET journée2_at = average_at;\n\t\
END IF;\n\t\
SELECT total_home_team_goal INTO journée3_at\n\t\
FROM temp_tab_away WHERE journée = (current_journée_var - 2);\n\t\
SELECT ISNULL(journée3_at) INTO ONEorZERO;\n\t\
IF ONEorZERO = 1 THEN\n\t\
    SET journée3_at = average_at;\n\t\
END IF;\n\t\
SELECT total_home_team_goal INTO journée4_at\n\t\
FROM temp_tab_away WHERE journée = (current_journée_var - 3);\n\t\
SELECT ISNULL(journée4_at) INTO ONEorZERO;\n\t\
IF ONEorZERO = 1 THEN\n\t\
    SET journée4_at = average_at;\n\t\
END IF;\n\t\
SELECT total_home_team_goal INTO journée5_at\n\t\
FROM temp_tab_away WHERE journée = (current_journée_var - 4);\n\t\
SELECT ISNULL(journée5_at) INTO ONEorZERO;\n\t\
IF ONEorZERO = 1 THEN\n\t\
    SET journée5_at = average_at;\n\t\
END IF;\n\t\
SELECT COUNT(journée) INTO var_total_journée\n\t\
FROM temp_tab_away; \n\t\
SELECT COUNT(journée) INTO var_over0\n\t\
FROM temp_tab_away WHERE (total_home_team_goal > 0);\n\t\
SET var_over0_conceded_at = ((var_over0 / var_total_journée)* 100);\n\t\
SELECT COUNT(journée) INTO var_over1\n\t\
FROM temp_tab_away WHERE (total_home_team_goal > 1);\n\t\
SET var_over1_conceded_at = ((var_over1 / var_total_journée)* 100);\n\t\
SELECT COUNT(journée) INTO var_over2\n\t\
FROM temp_tab_away WHERE (total_home_team_goal > 2);\n\t\
SET var_over2_conceded_at = ((var_over2 / var_total_journée)* 100);\n\t\
SELECT COUNT(journée) INTO var_clean_sheet\n\t\
FROM temp_tab_away WHERE (total_home_team_goal = 0);\n\t\
INSERT INTO {self.lig_id}_scored_conceded_ds\n\t\
VALUES (NEW.journée, NEW.date_time, NEW.home_team, NEW.away_team, \
journée5_ht, journée4_ht, journée3_ht, journée2_ht, journée1_ht, \
journée5_at, journée4_at, journée3_at, journée2_at, journée1_at, \
var_over0_scored_ht, var_over1_scored_ht, var_over2_scored_ht, \
var_over0_conceded_at, var_over1_conceded_at, var_over2_conceded_at,\
var_w_scoring, average_ht, var_clean_sheet, average_at, \
NEW.total_home_team_goal);\n\
END"
        TRIGGERS.append(beforeInsert__sumary__scored_conceded_ds)
        # comment on the trigger above
        beforeInsert__sumary__conceded_scored_all_ds = f"CREATE TRIGGER \
IF NOT EXISTS beforeInsert__summary__conceded_scored_all_ds_{self.lig_id} \
BEFORE INSERT ON {self.lig_id}_summary FOR EACH ROW\nBEGIN\n\t\
DECLARE current_journée_var, journée1_ht, journée2_ht, journée3_ht, \
journée4_ht, journée5_ht, journée1_at, journée2_at, journée3_at, \
journée4_at, journée5_at, var_total_journée TINYINT;\n\t\
DECLARE var_over0_scored_ht, var_over1_scored_ht, var_over2_scored_ht, \
var_over0_conceded_at, var_over1_conceded_at, var_over2_conceded_at \
TINYINT UNSIGNED;\n\t\
DECLARE var_over0, var_over1, var_over2, average_ht, average_at, ONEorZERO, \
var_w_scoring, var_clean_sheet TINYINT UNSIGNED;\n\t\
CREATE OR REPLACE TEMPORARY TABLE temp_tab\n\t\
SELECT journée, total_away_team_goal FROM {self.lig_id}_summary\n\t\
WHERE home_team = NEW.home_team OR away_team = NEW.home_team \
ORDER BY date_time DESC LIMIT 5;\n\t\
SELECT MAX(journée) INTO current_journée_var\n\t\
FROM temp_tab;\n\t\
SELECT AVG(total_away_team_goal) INTO average_ht\n\t\
FROM temp_tab;\n\t\
SELECT total_away_team_goal INTO journée1_ht\n\t\
FROM temp_tab WHERE journée = current_journée_var;\n\t\
SELECT ISNULL(journée1_ht) INTO ONEorZERO;\n\t\
IF ONEorZERO = 1 THEN\n\t\
    SET journée1_ht = average_ht;\n\t\
END IF;\n\t\
SELECT total_away_team_goal INTO journée2_ht\n\t\
FROM temp_tab WHERE journée = (current_journée_var - 1);\n\t\
SELECT ISNULL(journée2_ht) INTO ONEorZERO;\n\t\
IF ONEorZERO = 1 THEN\n\t\
    SET journée2_ht = average_ht;\n\t\
END IF;\n\t\
SELECT total_away_team_goal INTO journée3_ht\n\t\
FROM temp_tab WHERE journée = (current_journée_var - 2);\n\t\
SELECT ISNULL(journée3_ht) INTO ONEorZERO;\n\t\
IF ONEorZERO = 1 THEN\n\t\
    SET journée3_ht = average_ht;\n\t\
END IF;\n\t\
SELECT total_away_team_goal INTO journée4_ht\n\t\
FROM temp_tab WHERE journée = (current_journée_var - 3);\n\t\
SELECT ISNULL(journée4_ht) INTO ONEorZERO;\n\t\
IF ONEorZERO = 1 THEN\n\t\
    SET journée4_ht = average_ht;\n\t\
END IF;\n\t\
SELECT total_away_team_goal INTO journée5_ht\n\t\
FROM temp_tab WHERE journée = (current_journée_var - 4);\n\t\
SELECT ISNULL(journée5_ht) INTO ONEorZERO;\n\t\
IF ONEorZERO = 1 THEN\n\t\
    SET journée5_ht = average_ht;\n\t\
END IF;\n\t\
SELECT COUNT(journée) INTO var_total_journée\n\t\
FROM temp_tab; \n\t\
SELECT COUNT(journée) INTO var_over0\n\t\
FROM temp_tab WHERE (total_away_team_goal > 0);\n\t\
SET var_over0_scored_ht = ((var_over0 / var_total_journée)* 100);\n\t\
SELECT COUNT(journée) INTO var_over1\n\t\
FROM temp_tab WHERE (total_away_team_goal > 1);\n\t\
SET var_over1_scored_ht = ((var_over1 / var_total_journée)* 100);\n\t\
SELECT COUNT(journée) INTO var_over2\n\t\
FROM temp_tab WHERE (total_away_team_goal > 2);\n\t\
SET var_over2_scored_ht = ((var_over2 / var_total_journée)* 100);\n\t\
SELECT COUNT(journée) INTO var_clean_sheet\n\t\
FROM temp_tab WHERE (total_away_team_goal = 0);\n\t\
\
CREATE OR REPLACE TEMPORARY TABLE temp_tab_away\n\t\
SELECT journée, total_away_team_goal FROM {self.lig_id}_summary\n\t\
WHERE away_team = NEW.away_team OR home_team = NEW.away_team \
ORDER BY date_time DESC LIMIT 5;\n\t\
SELECT MAX(journée) INTO current_journée_var\n\t\
FROM temp_tab_away;\n\t\
SELECT AVG(total_away_team_goal) INTO average_at\n\t\
FROM temp_tab_away;\n\t\
SELECT total_away_team_goal INTO journée1_at\n\t\
FROM temp_tab_away WHERE journée = current_journée_var;\n\t\
SELECT ISNULL(journée1_at) INTO ONEorZERO;\n\t\
IF ONEorZERO = 1 THEN\n\t\
    SET journée1_at = average_at;\n\t\
END IF;\n\t\
SELECT total_away_team_goal INTO journée2_at\n\t\
FROM temp_tab_away WHERE journée = (current_journée_var - 1);\n\t\
SELECT ISNULL(journée2_at) INTO ONEorZERO;\n\t\
IF ONEorZERO = 1 THEN\n\t\
    SET journée2_at = average_at;\n\t\
END IF;\n\t\
SELECT total_away_team_goal INTO journée3_at\n\t\
FROM temp_tab_away WHERE journée = (current_journée_var - 2);\n\t\
SELECT ISNULL(journée3_at) INTO ONEorZERO;\n\t\
IF ONEorZERO = 1 THEN\n\t\
    SET journée3_at = average_at;\n\t\
END IF;\n\t\
SELECT total_away_team_goal INTO journée4_at\n\t\
FROM temp_tab_away WHERE journée = (current_journée_var - 3);\n\t\
SELECT ISNULL(journée4_at) INTO ONEorZERO;\n\t\
IF ONEorZERO = 1 THEN\n\t\
    SET journée4_at = average_at;\n\t\
END IF;\n\t\
SELECT total_away_team_goal INTO journée5_at\n\t\
FROM temp_tab_away WHERE journée = (current_journée_var - 4);\n\t\
SELECT ISNULL(journée5_at) INTO ONEorZERO;\n\t\
IF ONEorZERO = 1 THEN\n\t\
    SET journée5_at = average_at;\n\t\
END IF;\n\t\
SELECT COUNT(journée) INTO var_total_journée\n\t\
FROM temp_tab_away; \n\t\
SELECT COUNT(journée) INTO var_over0\n\t\
FROM temp_tab_away WHERE (total_away_team_goal > 0);\n\t\
SET var_over0_conceded_at = ((var_over0 / var_total_journée)* 100);\n\t\
SELECT COUNT(journée) INTO var_over1\n\t\
FROM temp_tab_away WHERE (total_away_team_goal > 1);\n\t\
SET var_over1_conceded_at = ((var_over1 / var_total_journée)* 100);\n\t\
SELECT COUNT(journée) INTO var_over2\n\t\
FROM temp_tab_away WHERE (total_away_team_goal > 2);\n\t\
SET var_over2_conceded_at = ((var_over2 / var_total_journée)* 100);\n\t\
SELECT COUNT(journée) INTO var_w_scoring\n\t\
FROM temp_tab_away WHERE (total_away_team_goal = 0);\n\t\
INSERT INTO {self.lig_id}_conceded_scored_all_ds\n\t\
VALUES (NEW.journée, NEW.date_time, NEW.home_team, NEW.away_team, \
journée5_ht, journée4_ht, journée3_ht, journée2_ht, journée1_ht, \
journée5_at, journée4_at, journée3_at, journée2_at, journée1_at, \
var_over0_conceded_ht, var_over1_conceded_ht, var_over2_conceded_ht, \
var_over0_scored_at, var_over1_scored_at, var_over2_scored_at,\
var_w_scoring, average_ht, var_clean_sheet, average_at, \
NEW.total_away_team_goal);\n\
END"
        TRIGGERS.append(beforeInsert__sumary__conceded_scored_all_ds)
        # comment
        beforeInsert__sumary__conceded_scored_ds = f"CREATE TRIGGER \
IF NOT EXISTS beforeInsert__summary__conceded_scored_ds_{self.lig_id} \
BEFORE INSERT ON {self.lig_id}_summary FOR EACH ROW\nBEGIN\n\t\
DECLARE current_journée_var, journée1_ht, journée2_ht, journée3_ht, \
journée4_ht, journée5_ht, journée1_at, journée2_at, journée3_at, \
journée4_at, journée5_at, var_total_journée TINYINT;\n\t\
DECLARE var_over0_scored_ht, var_over1_scored_ht, var_over2_scored_ht, \
var_over0_conceded_at, var_over1_conceded_at, var_over2_conceded_at \
TINYINT UNSIGNED;\n\t\
DECLARE var_over0, var_over1, var_over2, average_ht, average_at, ONEorZERO, \
var_w_scoring, var_clean_sheet TINYINT UNSIGNED;\n\t\
CREATE OR REPLACE TEMPORARY TABLE temp_tab\n\t\
SELECT journée, total_away_team_goal FROM {self.lig_id}_summary\n\t\
WHERE home_team = NEW.home_team \
ORDER BY date_time DESC LIMIT 5;\n\t\
SELECT MAX(journée) INTO current_journée_var\n\t\
FROM temp_tab;\n\t\
SELECT AVG(total_away_team_goal) INTO average_ht\n\t\
FROM temp_tab;\n\t\
SELECT total_away_team_goal INTO journée1_ht\n\t\
FROM temp_tab WHERE journée = current_journée_var;\n\t\
SELECT ISNULL(journée1_ht) INTO ONEorZERO;\n\t\
IF ONEorZERO = 1 THEN\n\t\
    SET journée1_ht = average_ht;\n\t\
END IF;\n\t\
SELECT total_away_team_goal INTO journée2_ht\n\t\
FROM temp_tab WHERE journée = (current_journée_var - 1);\n\t\
SELECT ISNULL(journée2_ht) INTO ONEorZERO;\n\t\
IF ONEorZERO = 1 THEN\n\t\
    SET journée2_ht = average_ht;\n\t\
END IF;\n\t\
SELECT total_away_team_goal INTO journée3_ht\n\t\
FROM temp_tab WHERE journée = (current_journée_var - 2);\n\t\
SELECT ISNULL(journée3_ht) INTO ONEorZERO;\n\t\
IF ONEorZERO = 1 THEN\n\t\
    SET journée3_ht = average_ht;\n\t\
END IF;\n\t\
SELECT total_away_team_goal INTO journée4_ht\n\t\
FROM temp_tab WHERE journée = (current_journée_var - 3);\n\t\
SELECT ISNULL(journée4_ht) INTO ONEorZERO;\n\t\
IF ONEorZERO = 1 THEN\n\t\
    SET journée4_ht = average_ht;\n\t\
END IF;\n\t\
SELECT total_away_team_goal INTO journée5_ht\n\t\
FROM temp_tab WHERE journée = (current_journée_var - 4);\n\t\
SELECT ISNULL(journée5_ht) INTO ONEorZERO;\n\t\
IF ONEorZERO = 1 THEN\n\t\
    SET journée5_ht = average_ht;\n\t\
END IF;\n\t\
SELECT COUNT(journée) INTO var_total_journée\n\t\
FROM temp_tab; \n\t\
SELECT COUNT(journée) INTO var_over0\n\t\
FROM temp_tab WHERE (total_away_team_goal > 0);\n\t\
SET var_over0_scored_ht = ((var_over0 / var_total_journée)* 100);\n\t\
SELECT COUNT(journée) INTO var_over1\n\t\
FROM temp_tab WHERE (total_away_team_goal > 1);\n\t\
SET var_over1_scored_ht = ((var_over1 / var_total_journée)* 100);\n\t\
SELECT COUNT(journée) INTO var_over2\n\t\
FROM temp_tab WHERE (total_away_team_goal > 2);\n\t\
SET var_over2_scored_ht = ((var_over2 / var_total_journée)* 100);\n\t\
SELECT COUNT(journée) INTO var_clean_sheet\n\t\
FROM temp_tab WHERE (total_away_team_goal = 0);\n\t\
\
CREATE OR REPLACE TEMPORARY TABLE temp_tab_away\n\t\
SELECT journée, total_away_team_goal FROM {self.lig_id}_summary\n\t\
WHERE away_team = NEW.away_team \
ORDER BY date_time DESC LIMIT 5;\n\t\
SELECT MAX(journée) INTO current_journée_var\n\t\
FROM temp_tab_away;\n\t\
SELECT AVG(total_away_team_goal) INTO average_at\n\t\
FROM temp_tab_away;\n\t\
SELECT total_away_team_goal INTO journée1_at\n\t\
FROM temp_tab_away WHERE journée = current_journée_var;\n\t\
SELECT ISNULL(journée1_at) INTO ONEorZERO;\n\t\
IF ONEorZERO = 1 THEN\n\t\
    SET journée1_at = average_at;\n\t\
END IF;\n\t\
SELECT total_away_team_goal INTO journée2_at\n\t\
FROM temp_tab_away WHERE journée = (current_journée_var - 1);\n\t\
SELECT ISNULL(journée2_at) INTO ONEorZERO;\n\t\
IF ONEorZERO = 1 THEN\n\t\
    SET journée2_at = average_at;\n\t\
END IF;\n\t\
SELECT total_away_team_goal INTO journée3_at\n\t\
FROM temp_tab_away WHERE journée = (current_journée_var - 2);\n\t\
SELECT ISNULL(journée3_at) INTO ONEorZERO;\n\t\
IF ONEorZERO = 1 THEN\n\t\
    SET journée3_at = average_at;\n\t\
END IF;\n\t\
SELECT total_away_team_goal INTO journée4_at\n\t\
FROM temp_tab_away WHERE journée = (current_journée_var - 3);\n\t\
SELECT ISNULL(journée4_at) INTO ONEorZERO;\n\t\
IF ONEorZERO = 1 THEN\n\t\
    SET journée4_at = average_at;\n\t\
END IF;\n\t\
SELECT total_away_team_goal INTO journée5_at\n\t\
FROM temp_tab_away WHERE journée = (current_journée_var - 4);\n\t\
SELECT ISNULL(journée5_at) INTO ONEorZERO;\n\t\
IF ONEorZERO = 1 THEN\n\t\
    SET journée5_at = average_at;\n\t\
END IF;\n\t\
SELECT COUNT(journée) INTO var_total_journée\n\t\
FROM temp_tab_away; \n\t\
SELECT COUNT(journée) INTO var_over0\n\t\
FROM temp_tab_away WHERE (total_away_team_goal > 0);\n\t\
SET var_over0_conceded_at = ((var_over0 / var_total_journée)* 100);\n\t\
SELECT COUNT(journée) INTO var_over1\n\t\
FROM temp_tab_away WHERE (total_away_team_goal > 1);\n\t\
SET var_over1_conceded_at = ((var_over1 / var_total_journée)* 100);\n\t\
SELECT COUNT(journée) INTO var_over2\n\t\
FROM temp_tab_away WHERE (total_away_team_goal > 2);\n\t\
SET var_over2_conceded_at = ((var_over2 / var_total_journée)* 100);\n\t\
SELECT COUNT(journée) INTO var_w_scoring\n\t\
FROM temp_tab_away WHERE (total_away_team_goal = 0);\n\t\
INSERT INTO {self.lig_id}_conceded_scored_ds\n\t\
VALUES (NEW.journée, NEW.date_time, NEW.home_team, NEW.away_team, \
journée5_ht, journée4_ht, journée3_ht, journée2_ht, journée1_ht, \
journée5_at, journée4_at, journée3_at, journée2_at, journée1_at, \
var_over0_conceded_ht, var_over1_conceded_ht, var_over2_conceded_ht, \
var_over0_scored_at, var_over1_scored_at, var_over2_scored_at,\
var_w_scoring, average_ht, var_clean_sheet, average_at, \
NEW.total_away_team_goal);\n\
END"
        TRIGGERS.append(beforeInsert__sumary__conceded_scored_ds)
        return TRIGGERS
