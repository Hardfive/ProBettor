# Sql request for football database
CREATE TABLE IF NOT EXISTS overall_standing (
	team VARCHAR(30) NOT NULL,
    journée TINYINT UNSIGNED NOT NULL DEFAULT 0,
	draw VARCHAR(4) NOT NULL,
	lose TINYINT UNSIGNED NOT NULL DEFAULT 0,
	win TINYINT UNSIGNED NOT NULL DEFAULT 0,
	points TINYINT UNSIGNED NOT NULL DEFAULT 0,
    scored TINYINT UNSIGNED NOT NULL DEFAULT 0,
    conceded TINYINT UNSIGNED NOT NULL DEFAULT 0,
	average DECIMAL(2,1) NOT NULL DEFAULT 0,
	PRIMARY KEY (team)
);
CREATE TABLE IF NOT EXISTS home_standing (
	team VARCHAR(30) NOT NULL,
    journée TINYINT UNSIGNED NOT NULL DEFAULT 0,
	draw VARCHAR(4) NOT NULL,
	lose TINYINT UNSIGNED NOT NULL DEFAULT 0,
	win TINYINT UNSIGNED NOT NULL DEFAULT 0,
	points TINYINT UNSIGNED NOT NULL DEFAULT 0,
    scored TINYINT UNSIGNED NOT NULL DEFAULT 0,
    conceded TINYINT UNSIGNED NOT NULL DEFAULT 0,
	average DECIMAL(2,1) NOT NULL DEFAULT 0,
	PRIMARY KEY (team),
	CONSTRAINT fk__home_standing__overall_standing FOREIGN KEY (team) REFERENCES overall_standing(team)
	ON DELETE CASCADE ON UPDATE CASCADE
);
CREATE TABLE IF NOT EXISTS away_standing (
	team VARCHAR(30) NOT NULL,
    journée TINYINT UNSIGNED NOT NULL DEFAULT 0,
	draw VARCHAR(4) NOT NULL,
	lose TINYINT UNSIGNED NOT NULL DEFAULT 0,
	win TINYINT UNSIGNED NOT NULL DEFAULT 0,
	points TINYINT UNSIGNED NOT NULL DEFAULT 0,
    scored TINYINT UNSIGNED NOT NULL DEFAULT 0,
    conceded TINYINT UNSIGNED NOT NULL DEFAULT 0,
	average DECIMAL(2,1) NOT NULL DEFAULT 0,
	PRIMARY KEY (team),
	CONSTRAINT fk__away_standing__overall_standing FOREIGN KEY (team) REFERENCES overall_standing(team)
	ON DELETE CASCADE ON UPDATE CASCADE
);
CREATE TABLE IF NOT EXISTS summary (
	journée TINYINT UNSIGNED NOT NULL,
	date_time DATETIME NOT NULL,
	home_team VARCHAR(30) NOT NULL,
	away_team VARCHAR(30) NOT NULL,
	1st_home_team_goal TINYINT UNSIGNED NOT NULL,
	1st_away_team_goal TINYINT UNSIGNED NOT NULL,
	1st_total_goal TINYINT UNSIGNED NOT NULL,
	2nd_home_team_goal TINYINT UNSIGNED NOT NULL,
	2nd_away_team_goal TINYINT UNSIGNED NOT NULL,
	2nd_total_goal TINYINT UNSIGNED NOT NULL,
	total_home_team_goal TINYINT UNSIGNED NOT NULL,
	total_away_team_goal TINYINT UNSIGNED NOT NULL,
	global TINYINT UNSIGNED NOT NULL,
    result VARCHAR(30) NOT NULL,
	PRIMARY KEY (date_time, home_team, away_team));

CREATE TABLE scorer (
    journée TINYINT UNSIGNED NOT NULL,
    player VARCHAR(30) NOT NULL,
    time_goal TINYINT UNSIGNED NOT NULL,
    team VARCHAR(30) NOT NULL,
    opponent VARCHAR(30) NOT NULL, 
    PRIMARY KEY(journée, player, time_goal)
);
CREATE TABLE IF NOT EXISTS stats (
    journée TINYINT UNSIGNED NOT NULL,
	home_team VARCHAR(30) NOT NULL,
	away_team VARCHAR(30) NOT NULL,
    home_team_shoot TINYINT UNSIGNED NOT NULL,
    away_team_shoot TINYINT UNSIGNED NOT NULL,
    home_team_acc_shoot TINYINT UNSIGNED NOT NULL,
    away_team_acc_shoot TINYINT UNSIGNED NOT NULL,
    home_team_corner TINYINT UNSIGNED NOT NULL,
    away_team_corner TINYINT UNSIGNED NOT NULL,
    home_team_yellow_card TINYINT UNSIGNED NOT NULL,
    away_team_yellow_card TINYINT UNSIGNED NOT NULL,
    home_team_exg TINYINT UNSIGNED NOT NULL,
    away_team_exg TINYINT UNSIGNED NOT NULL,
    PRIMARY KEY(journée, home_team, away_team)
);
CREATE TABLE IF NOT EXISTS h2h (
    date DATE NOT NULL,
    home_team VARCHAR(30) NOT NULL,
    away_team VARCHAR(30) NOT NULL,
    home_team_goal VARCHAR(30) NOT NULL,
    away_team_goal TINYINT UNSIGNED NOT NULL,
    PRIMARY KEY(date, home_team, away_team)
);
# datasets
CREATE TABLE IF NOT EXISTS global_overall_ds (
	journée TINYINT UNSIGNED NOT NULL,
	date_time DATETIME NOT NULL,
	home_team VARCHAR(30) NOT NULL,
	away_team VARCHAR(30) NOT NULL,
    journée5_ht TINYINT UNSIGNED DEFAULT 0,
	journée4_ht TINYINT UNSIGNED DEFAULT 0, 
	journée3_ht TINYINT UNSIGNED DEFAULT 0,
	journée2_ht TINYINT UNSIGNED DEFAULT 0,
	journée1_ht TINYINT UNSIGNED DEFAULT 0,
	journée5_at TINYINT UNSIGNED DEFAULT 0, 
	journée4_at TINYINT UNSIGNED DEFAULT 0,
	journée3_at TINYINT UNSIGNED DEFAULT 0,
	journée2_at TINYINT UNSIGNED DEFAULT 0,
	journée1_at TINYINT UNSIGNED DEFAULT 0,
    over0_all_ht TINYINT UNSIGNED DEFAULT 0,
    over1_all_ht TINYINT UNSIGNED DEFAULT 0,
    over2_all_ht TINYINT UNSIGNED DEFAULT 0,
    over0_all_at TINYINT UNSIGNED DEFAULT 0,
    over1_all_at TINYINT UNSIGNED DEFAULT 0,
    over2_all_at TINYINT UNSIGNED DEFAULT 0,
    global TINYINT UNSIGNED NOT NULL DEFAULT 0,
	INDEX ind_journée_date_time (journée, date_time)
);
CREATE TABLE IF NOT EXISTS global_ds (
	journée TINYINT UNSIGNED NOT NULL,
	date_time DATETIME NOT NULL,
	home_team VARCHAR(30) NOT NULL,
	away_team VARCHAR(30) NOT NULL,
    journée5_ht TINYINT UNSIGNED DEFAULT 0,
	journée4_ht TINYINT UNSIGNED DEFAULT 0, 
	journée3_ht TINYINT UNSIGNED DEFAULT 0,
	journée2_ht TINYINT UNSIGNED DEFAULT 0,
	journée1_ht TINYINT UNSIGNED DEFAULT 0,
	journée5_at TINYINT UNSIGNED DEFAULT 0, 
	journée4_at TINYINT UNSIGNED DEFAULT 0,
	journée3_at TINYINT UNSIGNED DEFAULT 0,
	journée2_at TINYINT UNSIGNED DEFAULT 0,
	journée1_at TINYINT UNSIGNED DEFAULT 0,
    over0_all_ht TINYINT UNSIGNED DEFAULT 0,
    over1_all_ht TINYINT UNSIGNED DEFAULT 0,
    over2_all_ht TINYINT UNSIGNED DEFAULT 0,
    over0_all_at TINYINT UNSIGNED DEFAULT 0,
    over1_all_at TINYINT UNSIGNED DEFAULT 0,
    over2_all_at TINYINT UNSIGNED DEFAULT 0,
    global TINYINT UNSIGNED NOT NULL DEFAULT 0,
	INDEX ind_journée_date_time (journée, date_time)
);
CREATE TABLE IF NOT EXISTS scored_conceded_all_ds (
	journée TINYINT UNSIGNED NOT NULL,
	date_time DATETIME NOT NULL,
	home_team VARCHAR(30) NOT NULL,
	away_team VARCHAR(30) NOT NULL,
    journée5_ht TINYINT UNSIGNED DEFAULT 0,
	journée4_ht TINYINT UNSIGNED DEFAULT 0, 
	journée3_ht TINYINT UNSIGNED DEFAULT 0,
	journée2_ht TINYINT UNSIGNED DEFAULT 0,
	journée1_ht TINYINT UNSIGNED DEFAULT 0,
	journée5_at TINYINT UNSIGNED DEFAULT 0, 
	journée4_at TINYINT UNSIGNED DEFAULT 0,
	journée3_at TINYINT UNSIGNED DEFAULT 0,
	journée2_at TINYINT UNSIGNED DEFAULT 0,
	journée1_at TINYINT UNSIGNED DEFAULT 0,
    over0_scored_ht TINYINT UNSIGNED DEFAULT 0,
    over1_scored_ht TINYINT UNSIGNED DEFAULT 0,
    over2_scored_ht TINYINT UNSIGNED DEFAULT 0,
    over0_conceded_at TINYINT UNSIGNED DEFAULT 0,
    over1_conceded_at TINYINT UNSIGNED DEFAULT 0,
    over2_conceded_at TINYINT UNSIGNED DEFAULT 0,
    without_scoring_ht TINYINT UNSIGNED DEFAULT 0,
    average_ht TINYINT UNSIGNED DEFAULT 0,
    clean_sheet_at TINYINT UNSIGNED DEFAULT 0,
    average_at TINYINT UNSIGNED DEFAULT 0,
    total_home_team_goal TINYINT UNSIGNED NOT NULL DEFAULT 0,
	INDEX ind_journée_date_time (journée, date_time)
);
CREATE TABLE IF NOT EXISTS scored_conceded_ds (
	journée TINYINT UNSIGNED NOT NULL,
	date_time DATETIME NOT NULL,
	home_team VARCHAR(30) NOT NULL,
	away_team VARCHAR(30) NOT NULL,
    journée5_ht TINYINT UNSIGNED DEFAULT 0,
	journée4_ht TINYINT UNSIGNED DEFAULT 0, 
	journée3_ht TINYINT UNSIGNED DEFAULT 0,
	journée2_ht TINYINT UNSIGNED DEFAULT 0,
	journée1_ht TINYINT UNSIGNED DEFAULT 0,
	journée5_at TINYINT UNSIGNED DEFAULT 0, 
	journée4_at TINYINT UNSIGNED DEFAULT 0,
	journée3_at TINYINT UNSIGNED DEFAULT 0,
	journée2_at TINYINT UNSIGNED DEFAULT 0,
	journée1_at TINYINT UNSIGNED DEFAULT 0,
    over0_scored_ht TINYINT UNSIGNED DEFAULT 0,
    over1_scored_ht TINYINT UNSIGNED DEFAULT 0,
    over2_scored_ht TINYINT UNSIGNED DEFAULT 0,
    over0_conceded_at TINYINT UNSIGNED DEFAULT 0,
    over1_conceded_at TINYINT UNSIGNED DEFAULT 0,
    over2_conceded_at TINYINT UNSIGNED DEFAULT 0,
    without_scoring_ht TINYINT UNSIGNED DEFAULT 0,
    average_ht TINYINT UNSIGNED DEFAULT 0,
    clean_sheet_at TINYINT UNSIGNED DEFAULT 0,
    average_at TINYINT UNSIGNED DEFAULT 0,
    total_home_team_goal TINYINT UNSIGNED NOT NULL DEFAULT 0,
	INDEX ind_journée_date_time (journée, date_time)
);
CREATE TABLE IF NOT EXISTS conceded_scored_all_ds (
	journée TINYINT UNSIGNED NOT NULL,
	date_time DATETIME NOT NULL,
	home_team VARCHAR(30) NOT NULL,
	away_team VARCHAR(30) NOT NULL,
    journée5_ht TINYINT UNSIGNED DEFAULT 0,
	journée4_ht TINYINT UNSIGNED DEFAULT 0, 
	journée3_ht TINYINT UNSIGNED DEFAULT 0,
	journée2_ht TINYINT UNSIGNED DEFAULT 0,
	journée1_ht TINYINT UNSIGNED DEFAULT 0,
	journée5_at TINYINT UNSIGNED DEFAULT 0, 
	journée4_at TINYINT UNSIGNED DEFAULT 0,
	journée3_at TINYINT UNSIGNED DEFAULT 0,
	journée2_at TINYINT UNSIGNED DEFAULT 0,
	journée1_at TINYINT UNSIGNED DEFAULT 0,
    over0_conceded_ht TINYINT UNSIGNED DEFAULT 0,
    over1_conceded_ht TINYINT UNSIGNED DEFAULT 0,
    over2_conceded_ht TINYINT UNSIGNED DEFAULT 0,
    over0_scored_at TINYINT UNSIGNED DEFAULT 0,
    over1_scored_at TINYINT UNSIGNED DEFAULT 0,
    over2_scored_at TINYINT UNSIGNED DEFAULT 0,
    clean_sheet_ht TINYINT UNSIGNED DEFAULT 0,
    average_ht TINYINT UNSIGNED DEFAULT 0,
    without_scoring_at TINYINT UNSIGNED DEFAULT 0,
    average_at TINYINT UNSIGNED DEFAULT 0,
    total_away_team_goal TINYINT UNSIGNED NOT NULL DEFAULT 0,
	INDEX ind_journée_date_time (journée, date_time)
);
CREATE TABLE IF NOT EXISTS conceded_scored_ds (
	journée TINYINT UNSIGNED NOT NULL,
	date_time DATETIME NOT NULL,
	home_team VARCHAR(30) NOT NULL,
	away_team VARCHAR(30) NOT NULL,
    journée5_ht TINYINT UNSIGNED DEFAULT 0,
	journée4_ht TINYINT UNSIGNED DEFAULT 0, 
	journée3_ht TINYINT UNSIGNED DEFAULT 0,
	journée2_ht TINYINT UNSIGNED DEFAULT 0,
	journée1_ht TINYINT UNSIGNED DEFAULT 0,
	journée5_at TINYINT UNSIGNED DEFAULT 0, 
	journée4_at TINYINT UNSIGNED DEFAULT 0,
	journée3_at TINYINT UNSIGNED DEFAULT 0,
	journée2_at TINYINT UNSIGNED DEFAULT 0,
	journée1_at TINYINT UNSIGNED DEFAULT 0,
    over0_conceded_ht TINYINT UNSIGNED DEFAULT 0,
    over1_conceded_ht TINYINT UNSIGNED DEFAULT 0,
    over2_conceded_ht TINYINT UNSIGNED DEFAULT 0,
    over0_scored_at TINYINT UNSIGNED DEFAULT 0,
    over1_scored_at TINYINT UNSIGNED DEFAULT 0,
    over2_scored_at TINYINT UNSIGNED DEFAULT 0,
    clean_sheet_ht TINYINT UNSIGNED DEFAULT 0,
    average_ht TINYINT UNSIGNED DEFAULT 0,
    without_scoring_at TINYINT UNSIGNED DEFAULT 0,
    average_at TINYINT UNSIGNED DEFAULT 0,
    total_away_team_goal TINYINT UNSIGNED NOT NULL DEFAULT 0,
	INDEX ind_journée_date_time (journée, date_time)
);
# Views allow us to put ranking in the standing tables
CREATE OR REPLACE VIEW V_overall_standing AS 
SELECT ROW_NUMBER() OVER (ORDER BY points DESC) AS ranking,
team,
journée,
draw,
lose,
win,
points,
scored,
conceded,
average
FROM overall_standing;

CREATE OR REPLACE VIEW V_home_standing AS 
SELECT ROW_NUMBER() OVER (ORDER BY points DESC) AS ranking,
team,
journée,
draw,
lose,
win,
points,
scored,
conceded,
average
FROM home_standing;

CREATE OR REPLACE VIEW V_away_standing AS 
SELECT ROW_NUMBER() OVER (ORDER BY points DESC) AS ranking,
team,
journée,
draw,
lose,
win,
points,
scored,
conceded,
average
FROM away_standing;

CREATE TRIGGER afterInsert__overall_standing__team AFTER INSERT ON overall_standing FOR EACH ROW
BEGIN
	INSERT INTO home_standing (team)
	VALUES (NEW.team);
	INSERT INTO away_standing (team)
	VALUES (NEW.team);
END //

# Ce trigger se charge de designer le vainqueur et d''attribuer les points aux participants
# Calcule le pourcentage des différents résultats possible (Win, Lose, Draw)
# mets a jour les tables standing
CREATE TRIGGER afterInsert__summary__result_standing AFTER INSERT ON summary FOR EACH ROW
BEGIN
    DECLARE var_overall_home_team_points, var_overall_away_team_points, var_home_team_points, var_away_team_points TINYINT UNSIGNED; 
    DECLARE var_home_team_goal, var_away_team_goal TINYINT UNSIGNED;
    DECLARE var_total_win, var_total_draw, var_total_lose TINYINT UNSIGNED;
    DECLARE var_total_journée_home_team, var_total_journée_away_team TINYINT UNSIGNED;
    DECLARE var_total_home_team_conceded, var_total_home_team_scored, var_total_away_team_scored, var_total_away_team_conceded TINYINT UNSIGNED;
    DECLARE var_scored_at_away, var_scored_at_home, var_conceded_at_away, var_conceded_at_home TINYINT UNSIGNED;
    DECLARE var_global_average DECIMAL(2,1) NOT NULL;
    SELECT points INTO var_overall_home_team_points
    FROM overall_standing
    WHERE team = NEW.home_team;
    SELECT points INTO var_overall_away_team_points
    FROM overall_standing
    WHERE team = NEW.away_team;
    SELECT points INTO var_home_team_points
    FROM home_standing
    WHERE team = NEW.home_team;
    SELECT points INTO var_away_team_points
    FROM away_standing
    WHERE team = NEW.away_team;
    SELECT total_home_team_goal, total_away_team_goal INTO var_home_team_goal, var_away_team_goal
    FROM summary
    WHERE home_team = NEW.home_team;
    IF (var_home_team_goal > var_away_team_goal) THEN
        UPDATE summary
        SET result = NEW.home_team
        WHERE home_team = NEW.home_team;
        UPDATE overall_standing
        SET points = var_overall_home_team_points + 3
        WHERE team = NEW.home_team;
        UPDATE home_standing
        SET points = var_home_team_points + 3
        WHERE team = NEW.home_team;
    ELSEIF (var_home_team_goal < var_away_team_goal) THEN
        UPDATE summary 
        SET result = NEW.away_team
        WHERE away_team = NEW.away_team;
        UPDATE overall_standing 
        SET points = var_overall_away_team_points + 3
        WHERE team = NEW.away_team;
        UPDATE away_standing
        SET points = var_away_team_points + 3
        WHERE team = NEW.away_team;
    ELSE 
        UPDATE summary
        SET result = "Draw"
        WHERE home_team = NEW.home_team;
        UPDATE overall_standing
        SET points = var_overall_home_team_points + 1
        WHERE team = NEW.home_team;
        UPDATE overall_standing
        SET points = var_overall_away_team_points + 1
        WHERE team = NEW.away_team;
        UPDATE home_standing 
        SET points = var_home_team_points + 1
        WHERE team = NEW.home_team;
        UPDATE away_standing 
        SET points = var_away_team_points + 1
        WHERE team = NEW.away_team;
    END IF;
# Home standing
    SELECT COUNT(journée) INTO var_total_journée_home_team
    FROM summary
    WHERE home_team = NEW.home_team;
	SELECT COUNT(result) INTO var_total_win
    FROM summary
    WHERE home_team = NEW.home_team AND result = NEW.home_team;
    UPDATE home_standing
    SET win = ((var_total_win / total_journée_home) * 100)
    WHERE team = NEW.home_team;
	SELECT COUNT(result) INTO var_total_lose
    FROM summary
    WHERE home_team = NEW.home_team AND result = NEW.away_team;
    UPDATE home_standing
    SET lose = ((var_total_lose / total_journée_home) * 100)
    WHERE team = NEW.home_team;
	SELECT COUNT(result) INTO var_total_draw
    FROM summary
    WHERE home_team = NEW.home_team AND result = "Draw";
    UPDATE home_standing
    SET draw = ((var_total_draw / total_journée_home) * 100)
    WHERE team = NEW.home_team;
    SELECT SUM(total_home_goal) INTO var_total_home_team_scored 
    FROM summary
    WHERE home_team = NEW.home_team;
    UPDATE home_standing
    SET scored = var_total_home_team_scored
    WHERE team = NEW.home_team;
    SELECT SUM(total_away_goal) INTO var_total_away_team_conceded
    FROM summary
    WHERE home_team = NEW.home_team;
    UPDATE home_standing
    SET conceded = var_total_away_team_conceded
    WHERE team = NEW.home_team;
    SELECT AVG(global) INTO var_global_average
    FROM summary
    WHERE home_team = NEW.home_team;
    UPDATE home_standing
    SET average = var_global_average
    WHERE team = NEW.home_team; 
# Away standing
    SELECT COUNT(away_team) INTO var_total_journée_away_team
    FROM summary
    WHERE away_team = NEW.away_team;
	SELECT COUNT(result) INTO var_total_win
    FROM summary
    WHERE away_team = NEW.away_team AND result = NEW.away_team;
    UPDATE away_standing
    SET win = ((var_total_win / total_mp) * 100)
    WHERE team = NEW.away_team;
	SELECT COUNT(result) INTO var_total_lose
    FROM summary
    WHERE away_team = NEW.away_team AND result = NEW.home_team;
    UPDATE away_standing
    SET lose = ((var_total_lose / total_mp) * 100)
    WHERE team = NEW.away_team;
	SELECT COUNT(result) INTO var_total_draw
    FROM summary
    WHERE away_team = NEW.away_team AND result = "Draw";
    UPDATE away_standing
    SET draw = ((var_total_draw / total_mp) * 100)
    WHERE team = NEW.away_team;
    SELECT SUM(total_away_goal) INTO var_total_away_team_scored 
    FROM summary
    WHERE away_team = NEW.away_team;
    UPDATE away_standing
    SET scored = var_total_away_team_scored
    WHERE team = NEW.away_team;
    SELECT SUM(total_home_goal) INTO var_total_away_team_conceded 
    FROM summary
    WHERE away_team = NEW.away_team;
    UPDATE away_standing
    SET conceded = var_total_away_team_conceded
    WHERE team = NEW.away_team;
    SELECT AVG(global) INTO var_global_average
    FROM summary
    WHERE away_team = NEW.away_team;
    UPDATE away_standing
    SET average = var_global_average
    WHERE team = NEW.away_team; 
# Overall home
    SELECT COUNT(journée) INTO var_total_journée_home_team
    FROM summary
    WHERE home_team = NEW.home_team OR away_team = NEW.home_team;
	SELECT COUNT(result) INTO var_total_win
    FROM summary
    WHERE (home_team = NEW.home_team OR away_team = NEW.home_team) AND result = NEW.home_team;
    UPDATE overall_standing
    SET win = ((var_total_win / var_total_journée_home_team) * 100)
    WHERE team = NEW.home_team;
	SELECT COUNT(result) INTO var_total_lose
    FROM summary
    WHERE (home_team = NEW.home_team OR away_team = NEW.home_team) AND result = NEW.away_team;
    UPDATE overall_standing
    SET lose = ((var_total_lose / var_total_journée_home_team) * 100)
    WHERE team = NEW.home_team;
	SELECT COUNT(result) INTO var_total_draw
    FROM summary
    WHERE (home_team = NEW.home_team OR away_team = NEW.home_team) AND result = "Draw";
    UPDATE overall_standing
    SET draw = ((var_total_draw / var_total_journée_home_team) * 100)
    WHERE team = NEW.home_team;
    SELECT scored, conceded INTO var_scored_at_home, var_conceded_at_home
    FROM home_standing
    WHERE team = NEW.home_team;
    SELECT scored, conceded INTO var_scored_at_away, var_conceded_at_away
    FROM away_standing
    WHERE team = NEW.home_team;
    UPDATE overall_standing
    SET scored = (scored_at_home + scored_at_away)
    WHERE team = NEW.home_team;
    UPDATE overall_standing
    SET conceded = (conceded_at_home + conceded_at_away)
    WHERE team = NEW.home_team;
    SELECT AVG(global) INTO var_global_average
    FROM summary
    WHERE home_team = NEW.home_team OR away_team = NEW.home_team;
    UPDATE overall_standing
    SET average = var_global_average
    WHERE team = NEW.home_team; 
# Overall away
    SELECT COUNT(journée) INTO var_total_journée_away_team
    FROM summary
    WHERE home_team = NEW.away_team OR away_team = NEW.away_team;
	SELECT COUNT(result) INTO var_total_win
    FROM summary
    WHERE (home_team = NEW.away_team OR away_team = NEW.away_team) AND result = NEW.away_team;
    UPDATE overall_standing
    SET win = ((var_total_win / var_total_journée_away_team) * 100)
    WHERE team = NEW.away_team;
	SELECT COUNT(result) INTO var_total_lose
    FROM summary
    WHERE (home_team = NEW.away_team OR away_team = NEW.away_team) AND result = NEW.home_team;
    UPDATE overall_standing
    SET lose = ((var_total_lose / var_total_journée_away_team) * 100)
    WHERE team = NEW.away_team;
	SELECT COUNT(result) INTO var_total_draw
    FROM summary
    WHERE (home_team = NEW.away_team OR away_team = NEW.away_team) AND result = "Draw";
    UPDATE overall_standing
    SET draw = ((var_total_draw / var_total_journée_away_team) * 100)
    WHERE team = NEW.away_team;
    SELECT scored, conceded INTO var_scored_at_home, var_conceded_at_home
    FROM home_standing
    WHERE team = NEW.away_team;
    SELECT scored, conceded INTO var_scored_at_away, var_conceded_at_away
    FROM away_standing
    WHERE team = NEW.away_team;
    UPDATE overall_standing
    SET scored = (var_scored_at_home + var_scored_at_away)
    WHERE team = NEW.away_team;
    UPDATE overall_standing
    SET conceded = (var_conceded_at_home + var_conceded_at_away)
    WHERE team = NEW.away_team;
    SELECT AVG(global) INTO var_global_average
    FROM summary
    WHERE home_team = NEW.away_team OR away_team = NEW.away_team;
    UPDATE overall_standing
    SET average = var_global_average
    WHERE team = NEW.away_team; 
END //

CREATE TRIGGER IF NOT EXISTS beforeInsert__summary__global_overall_ds BEFORE INSERT ON summary FOR EACH ROW 
BEGIN
    DECLARE current_journée_var, journée1_ht, journée2_ht, journée3_ht, journée4_ht, journée5_ht,
    journée1_at, journée2_at, journée3_at, journée4_at, journée5_at, var_total_journée TINYINT;
    DECLARE var_over0_all_ht, var_over1_all_ht, var_over2_all_ht, var_over0_all_at, var_over1_all_at, var_over2_all_at TINYINT UNSIGNED;
    DECLARE var_over0, var_over1, var_over2, average_ht, average_at, ONEorZERO TINYINT UNSIGNED;
    CREATE OR REPLACE TEMPORARY TABLE temp_tab
    SELECT journée, global FROM summary
    WHERE home_team = NEW.home_team OR away_team = NEW.home_team ORDER BY date_time DESC LIMIT 5;
    SELECT MAX(journée) INTO current_journée_var
    FROM temp_tab;
    SELECT AVG(global) INTO average_ht
    FROM temp_tab;
    SELECT global INTO journée1_ht
    FROM temp_tab WHERE journée = current_journée_var;
    SELECT ISNULL(journée1_ht) INTO ONEorZERO;
    IF ONEorZERO = 1 THEN
        SET journée1_ht = average_ht;
    END IF;
    SELECT global INTO journée2_ht
    FROM temp_tab WHERE journée = (current_journée_var - 1);
    SELECT ISNULL(journée2_ht) INTO ONEorZERO;
    IF ONEorZERO = 1 THEN
        SET journée2_ht = average_ht;
    END IF;
    SELECT global INTO journée3_ht
    FROM temp_tab WHERE journée = (current_journée_var - 2);
    SELECT ISNULL(journée3_ht) INTO ONEorZERO;
    IF ONEorZERO = 1 THEN
        SET journée3_ht = average_ht;
    END IF;
    SELECT global INTO journée4_ht
    FROM temp_tab WHERE journée = (current_journée_var - 3);
    SELECT ISNULL(journée4_ht) INTO ONEorZERO;
    IF ONEorZERO = 1 THEN
        SET journée4_ht = average_ht;
    END IF;
    SELECT global INTO journée5_ht
    FROM temp_tab WHERE journée = (current_journée_var - 4);
    SELECT ISNULL(journée5_ht) INTO ONEorZERO;
    IF ONEorZERO = 1 THEN
        SET journée5_ht = average_ht;
    END IF;
    SELECT COUNT(journée) INTO var_total_journée
    FROM temp_tab; 
    SELECT COUNT(journée) INTO var_over0
    FROM temp_tab WHERE (global > 0);
    SET var_over0_all_ht = ((var_over0 / var_total_journée)* 100);
    SELECT COUNT(journée) INTO var_over1
    FROM temp_tab WHERE (global > 1);
    SET var_over1_all_ht = ((var_over1 / var_total_journée)* 100);
    SELECT COUNT(journée) INTO var_over2
    FROM temp_tab WHERE (global > 2);
    SET var_over2_all_ht = ((var_over2 / var_total_journée)* 100);

    CREATE OR REPLACE TEMPORARY TABLE temp_tab_away
    SELECT journée, global FROM summary
    WHERE away_team = NEW.away_team OR home_team = NEW.away_team ORDER BY date_time DESC LIMIT 5;
    SELECT MAX(journée) INTO current_journée_var
    FROM temp_tab_away;
    SELECT AVG(global) INTO average_at
    FROM temp_tab_away;
    SELECT global INTO journée1_at
    FROM temp_tab_away WHERE journée = current_journée_var;
    SELECT ISNULL(journée1_at) INTO ONEorZERO;
    IF ONEorZERO = 1 THEN
        SET journée1_at = average_at;
    END IF;
    SELECT global INTO journée2_at               
    FROM temp_tab_away WHERE journée = (current_journée_var - 1);
    SELECT ISNULL(journée2_at) INTO ONEorZERO;
    IF ONEorZERO = 1 THEN
        SET journée2_at = average_at;
    END IF;
    SELECT global INTO journée3_at               
    FROM temp_tab_away WHERE journée = (current_journée_var - 2);
    SELECT ISNULL(journée3_at) INTO ONEorZERO;
    IF ONEorZERO = 1 THEN
        SET journée3_at = average_at;
    END IF;
    SELECT global INTO journée4_at               
    FROM temp_tab_away WHERE journée = (current_journée_var - 3);
    SELECT ISNULL(journée4_at) INTO ONEorZERO;
    IF ONEorZERO = 1 THEN
        SET journée4_at = average_at;
    END IF;
    SELECT global INTO journée5_at
    FROM temp_tab_away WHERE journée = (current_journée_var - 4);
    SELECT ISNULL(journée5_at) INTO ONEorZERO;
    IF ONEorZERO = 1 THEN
        SET journée5_at = average_at;
    END IF;
    SELECT COUNT(journée) INTO var_total_journée
    FROM temp_tab_away; 
    SELECT COUNT(journée) INTO var_over0
    FROM temp_tab_away WHERE (global > 0);
    SET var_over0_all_at = ((var_over0 / var_total_journée)* 100);
    SELECT COUNT(journée) INTO var_over1
    FROM temp_tab_away WHERE (global > 1);
    SET var_over1_all_at = ((var_over1 / var_total_journée)* 100);
    SELECT COUNT(journée) INTO var_over2
    FROM temp_tab_away WHERE (global > 2);
    SET var_over2_all_at = ((var_over2 / var_total_journée)* 100);
    INSERT INTO global_overall_ds
    VALUES (NEW.journée, NEW.date_time, NEW.home_team, NEW.away_team, journée5_ht, journée4_ht, journée3_ht, journée2_ht, journée1_ht,
        journée5_at, journée4_at, journée3_at, journée2_at, journée1_at, var_over0_all_ht, var_over1_all_ht, var_over2_all_ht,
        var_over0_all_at, var_over1_all_at, var_over2_all_at, NEW.global);
END //

CREATE TRIGGER IF NOT EXISTS beforeInsert__summary__global_ds BEFORE INSERT ON summary FOR EACH ROW 
BEGIN
    DECLARE current_journée_var, journée1_ht, journée2_ht, journée3_ht, journée4_ht, journée5_ht,
    journée1_at, journée2_at, journée3_at, journée4_at, journée5_at, var_total_journée TINYINT;
    DECLARE var_over0_all_ht, var_over1_all_ht, var_over2_all_ht, var_over0_all_at, var_over1_all_at, var_over2_all_at TINYINT UNSIGNED;
    DECLARE var_over0, var_over1, var_over2, average_ht, average_at, ONEorZERO TINYINT UNSIGNED;
    CREATE OR REPLACE TEMPORARY TABLE temp_tab
    SELECT journée, global FROM summary
    WHERE home_team = NEW.home_team ORDER BY date_time DESC LIMIT 5;
    SELECT MAX(journée) INTO current_journée_var
    FROM temp_tab;
    SELECT AVG(global) INTO average_ht
    FROM temp_tab;
    SELECT global INTO journée1_ht
    FROM temp_tab WHERE journée = current_journée_var;
    SELECT ISNULL(journée1_ht) INTO ONEorZERO;
    IF ONEorZERO = 1 THEN
        SET journée1_ht = average_ht;
    END IF;
    SELECT global INTO journée2_ht
    FROM temp_tab WHERE journée = (current_journée_var - 1);
    SELECT ISNULL(journée2_ht) INTO ONEorZERO;
    IF ONEorZERO = 1 THEN
        SET journée2_ht = average_ht;
    END IF;
    SELECT global INTO journée3_ht
    FROM temp_tab WHERE journée = (current_journée_var - 2);
    SELECT ISNULL(journée3_ht) INTO ONEorZERO;
    IF ONEorZERO = 1 THEN
        SET journée3_ht = average_ht;
    END IF;
    SELECT global INTO journée4_ht
    FROM temp_tab WHERE journée = (current_journée_var - 3);
    SELECT ISNULL(journée4_ht) INTO ONEorZERO;
    IF ONEorZERO = 1 THEN
        SET journée4_ht = average_ht;
    END IF;
    SELECT global INTO journée5_ht
    FROM temp_tab WHERE journée = (current_journée_var - 4);
    SELECT ISNULL(journée5_ht) INTO ONEorZERO;
    IF ONEorZERO = 1 THEN
        SET journée5_ht = average_ht;
    END IF;
    SELECT COUNT(journée) INTO var_total_journée
    FROM temp_tab; 
    SELECT COUNT(journée) INTO var_over0
    FROM temp_tab WHERE (global > 0);
    SET var_over0_all_ht = ((var_over0 / var_total_journée)* 100);
    SELECT COUNT(journée) INTO var_over1
    FROM temp_tab WHERE (global > 1);
    SET var_over1_all_ht = ((var_over1 / var_total_journée)* 100);
    SELECT COUNT(journée) INTO var_over2
    FROM temp_tab WHERE (global > 2);
    SET var_over2_all_ht = ((var_over2 / var_total_journée)* 100);

    CREATE OR REPLACE TEMPORARY TABLE temp_tab_away
    SELECT journée, global FROM summary
    WHERE away_team = NEW.away_team ORDER BY date_time DESC LIMIT 5;
    SELECT MAX(journée) INTO current_journée_var
    FROM temp_tab_away;
    SELECT AVG(global) INTO average_at
    FROM temp_tab_away;
    SELECT global INTO journée1_at
    FROM temp_tab_away WHERE journée = current_journée_var;
    SELECT ISNULL(journée1_at) INTO ONEorZERO;
    IF ONEorZERO = 1 THEN
        SET journée1_at = average_at;
    END IF;
    SELECT global INTO journée2_at               
    FROM temp_tab_away WHERE journée = (current_journée_var - 1);
    SELECT ISNULL(journée2_at) INTO ONEorZERO;
    IF ONEorZERO = 1 THEN
        SET journée2_at = average_at;
    END IF;
    SELECT global INTO journée3_at               
    FROM temp_tab_away WHERE journée = (current_journée_var - 2);
    SELECT ISNULL(journée3_at) INTO ONEorZERO;
    IF ONEorZERO = 1 THEN
        SET journée3_at = average_at;
    END IF;
    SELECT global INTO journée4_at               
    FROM temp_tab_away WHERE journée = (current_journée_var - 3);
    SELECT ISNULL(journée4_at) INTO ONEorZERO;
    IF ONEorZERO = 1 THEN
        SET journée4_at = average_at;
    END IF;
    SELECT global INTO journée5_at
    FROM temp_tab_away WHERE journée = (current_journée_var - 4);
    SELECT ISNULL(journée5_at) INTO ONEorZERO;
    IF ONEorZERO = 1 THEN
        SET journée5_at = average_at;
    END IF;
    SELECT COUNT(journée) INTO var_total_journée
    FROM temp_tab_away; 
    SELECT COUNT(journée) INTO var_over0
    FROM temp_tab_away WHERE (global > 0);
    SET var_over0_all_at = ((var_over0 / var_total_journée)* 100);
    SELECT COUNT(journée) INTO var_over1
    FROM temp_tab_away WHERE (global > 1);
    SET var_over1_all_at = ((var_over1 / var_total_journée)* 100);
    SELECT COUNT(journée) INTO var_over2
    FROM temp_tab_away WHERE (global > 2);
    SET var_over2_all_at = ((var_over2 / var_total_journée)* 100);
    INSERT INTO global_ds
    VALUES (NEW.journée, NEW.date_time, NEW.home_team, NEW.away_team, journée5_ht, journée4_ht, journée3_ht, journée2_ht, journée1_ht,
        journée5_at, journée4_at, journée3_at, journée2_at, journée1_at, var_over0_all_ht, var_over1_all_ht, var_over2_all_ht,
        var_over0_all_at, var_over1_all_at, var_over2_all_at, NEW.global);
END //

CREATE TRIGGER IF NOT EXISTS beforeInsert__summary__scored_conceded_all_ds BEFORE INSERT ON summary FOR EACH ROW 
BEGIN
    DECLARE current_journée_var, journée1_ht, journée2_ht, journée3_ht, journée4_ht, journée5_ht,
    journée1_at, journée2_at, journée3_at, journée4_at, journée5_at, var_total_journée TINYINT;
    DECLARE var_over0, var_over1, var_over2, var_w_scoring, var_clean_sheet TINYINT UNSIGNED;
    DECLARE over0_scored_ht, over1_scored_ht, over2_scored_ht, over0_conceded_at, over1_conceded_at, over2_conceded_at TINYINT UNSIGNED;
    DECLARE average_ht, average_at, ONEorZERO TINYINT UNSIGNED;
    CREATE OR REPLACE TEMPORARY TABLE temp_tab
    SELECT journée, total_home_team_goal FROM summary
    WHERE home_team = NEW.home_team OR away_team = NEW.home_team ORDER BY date_time DESC LIMIT 5;
    SELECT MAX(journée) INTO current_journée_var
    FROM temp_tab;
    SELECT AVG(total_home_team_goal) INTO average_ht
    FROM temp_tab;
    SELECT total_home_team_goal INTO journée1_ht
    FROM temp_tab WHERE journée = current_journée_var;
    SELECT ISNULL(journée1_ht) INTO ONEorZERO;
    IF ONEorZERO = 1 THEN
        SET journée1_ht = average_ht;
    END IF;
    SELECT total_home_team_goal INTO journée2_ht
    FROM temp_tab WHERE journée = (current_journée_var - 1);
    SELECT ISNULL(journée2_ht) INTO ONEorZERO;
    IF ONEorZERO = 1 THEN
        SET journée2_ht = average_ht;
    END IF;
    SELECT total_home_team_goal INTO journée3_ht
    FROM temp_tab WHERE journée = (current_journée_var - 2);
    SELECT ISNULL(journée3_ht) INTO ONEorZERO;
    IF ONEorZERO = 1 THEN
        SET journée3_ht = average_ht;
    END IF;
    SELECT total_home_team_goal INTO journée4_ht
    FROM temp_tab WHERE journée = (current_journée_var - 3);
    SELECT ISNULL(journée4_ht) INTO ONEorZERO;
    IF ONEorZERO = 1 THEN
        SET journée4_ht = average_ht;
    END IF;
    SELECT total_home_team_goal INTO journée5_ht
    FROM temp_tab WHERE journée = (current_journée_var - 4);
    SELECT ISNULL(journée5_ht) INTO ONEorZERO;
    IF ONEorZERO = 1 THEN
        SET journée5_ht = average_ht;
    END IF;
    SELECT COUNT(journée) INTO var_total_journée
    FROM temp_tab; 
    SELECT COUNT(journée) INTO var_over0
    FROM temp_tab WHERE (total_home_team_goal > 0);
    SET over0_scored_ht = ((var_over0 / var_total_journée)* 100);
    SELECT COUNT(journée) INTO var_over1
    FROM temp_tab WHERE (total_home_team_goal > 1);
    SET over1_scored_ht = ((var_over1 / var_total_journée)* 100);
    SELECT COUNT(journée) INTO var_over2
    FROM temp_tab WHERE (total_home_team_goal > 2);
    SET over2_scored_ht = ((var_over2 / var_total_journée)* 100);
    SELECT COUNT(journée) INTO var_w_scoring
    FROM temp_tab WHERE (total_home_team_goal = 0);

    CREATE OR REPLACE TEMPORARY TABLE temp_tab_away
    SELECT journée, total_home_team_goal FROM summary
    WHERE away_team = NEW.away_team OR home_team = NEW.away_team ORDER BY date_time DESC LIMIT 5;
    SELECT MAX(journée) INTO current_journée_var
    FROM temp_tab_away;
    SELECT AVG(total_home_team_goal) INTO average_at
    FROM temp_tab_away;
    SELECT total_home_team_goal INTO journée1_at
    FROM temp_tab_away WHERE journée = current_journée_var;
    SELECT ISNULL(journée1_at) INTO ONEorZERO;
    IF ONEorZERO = 1 THEN
        SET journée1_at = average_at;
    END IF;
    SELECT total_home_team_goal INTO journée2_at               
    FROM temp_tab_away WHERE journée = (current_journée_var - 1);
    SELECT ISNULL(journée2_at) INTO ONEorZERO;
    IF ONEorZERO = 1 THEN
        SET journée2_at = average_at;
    END IF;
    SELECT total_home_team_goal INTO journée3_at               
    FROM temp_tab_away WHERE journée = (current_journée_var - 2);
    SELECT ISNULL(journée3_at) INTO ONEorZERO;
    IF ONEorZERO = 1 THEN
        SET journée3_at = average_at;
    END IF;
    SELECT total_home_team_goal INTO journée4_at               
    FROM temp_tab_away WHERE journée = (current_journée_var - 3);
    SELECT ISNULL(journée4_at) INTO ONEorZERO;
    IF ONEorZERO = 1 THEN
        SET journée4_at = average_at;
    END IF;
    SELECT total_home_team_goal INTO journée5_at
    FROM temp_tab_away WHERE journée = (current_journée_var - 4);
    SELECT ISNULL(journée5_at) INTO ONEorZERO;
    IF ONEorZERO = 1 THEN
        SET journée5_at = average_at;
    END IF;
    SELECT COUNT(journée) INTO var_total_journée
    FROM temp_tab_away; 
    SELECT COUNT(journée) INTO var_over0
    FROM temp_tab_away WHERE (total_home_team_goal > 0);
    SET over0_conceded_at = ((var_over0 / var_total_journée)* 100);
    SELECT COUNT(journée) INTO var_over1
    FROM temp_tab_away WHERE (total_home_team_goal > 1);
    SET over1_conceded_at = ((var_over1 / var_total_journée)* 100);
    SELECT COUNT(journée) INTO var_over2
    FROM temp_tab_away WHERE (total_home_team_goal > 2);
    SET over2_conceded_at = ((var_over2 / var_total_journée)* 100);
    SELECT COUNT(journée) INTO var_clean_sheet
    FROM temp_tab_away WHERE (total_home_team_goal = 0);
    INSERT INTO scored_conceded_all_ds
    VALUES (NEW.journée, NEW.date_time, NEW.home_team, NEW.away_team, journée5_ht, journée4_ht, journée3_ht, journée2_ht, journée1_ht,
        journée5_at, journée4_at, journée3_at, journée2_at, journée1_at, over0_scored_ht, over1_scored_ht, over2_scored_ht,
        over0_conceded_at, over1_conceded_at, over2_conceded_at, var_w_scoring, average_ht, var_clean_sheet, average_at,
        NEW.total_home_team_goal);
END //

CREATE TRIGGER IF NOT EXISTS beforeInsert__summary__scored_conceded_ds BEFORE INSERT ON summary FOR EACH ROW 
BEGIN
    DECLARE current_journée_var, journée1_ht, journée2_ht, journée3_ht, journée4_ht, journée5_ht,
    journée1_at, journée2_at, journée3_at, journée4_at, journée5_at TINYINT;
    DECLARE var_over0, var_over1, var_over2, var_w_scoring, var_clean_sheet TINYINT UNSIGNED;
    DECLARE over0_conceded_ht, over1_conceded_ht, over2_conceded_ht, over0_scored_at, over1_scored_at, over2_scored_at TINYINT UNSIGNED;
    DECLARE average_ht, average_at, ONEorZERO TINYINT UNSIGNED;
    CREATE OR REPLACE TEMPORARY TABLE temp_tab
    SELECT journée, total_home_team_goal FROM summary
    WHERE home_team = NEW.home_team ORDER BY date_time DESC LIMIT 5;
    SELECT MAX(journée) INTO current_journée_var
    FROM temp_tab;
    SELECT AVG(total_home_team_goal) INTO average_ht
    FROM temp_tab;
    SELECT total_home_team_goal INTO journée1_ht
    FROM temp_tab WHERE journée = current_journée_var;
    SELECT ISNULL(journée1_ht) INTO ONEorZERO;
    IF ONEorZERO = 1 THEN
        SET journée1_ht = average_ht;
    END IF;
    SELECT total_home_team_goal INTO journée2_ht
    FROM temp_tab WHERE journée = (current_journée_var - 1);
    SELECT ISNULL(journée2_ht) INTO ONEorZERO;
    IF ONEorZERO = 1 THEN
        SET journée2_ht = average_ht;
    END IF;
    SELECT total_home_team_goal INTO journée3_ht
    FROM temp_tab WHERE journée = (current_journée_var - 2);
    SELECT ISNULL(journée3_ht) INTO ONEorZERO;
    IF ONEorZERO = 1 THEN
        SET journée3_ht = average_ht;
    END IF;
    SELECT total_home_team_goal INTO journée4_ht
    FROM temp_tab WHERE journée = (current_journée_var - 3);
    SELECT ISNULL(journée4_ht) INTO ONEorZERO;
    IF ONEorZERO = 1 THEN
        SET journée4_ht = average_ht;
    END IF;
    SELECT total_home_team_goal INTO journée5_ht
    FROM temp_tab WHERE journée = (current_journée_var - 4);
    SELECT ISNULL(journée5_ht) INTO ONEorZERO;
    IF ONEorZERO = 1 THEN
        SET journée5_ht = average_ht;
    END IF;
    SELECT COUNT(journée) INTO var_total_journée
    FROM temp_tab; 
    SELECT COUNT(journée) INTO var_over0
    FROM temp_tab WHERE (total_home_team_goal > 0);
    SET over0_scored_ht = ((var_over0 / var_total_journée)* 100);
    SELECT COUNT(journée) INTO var_over1
    FROM temp_tab WHERE (total_home_team_goal > 1);
    SET over1_scored_ht = ((var_over1 / var_total_journée)* 100);
    SELECT COUNT(journée) INTO var_over2
    FROM temp_tab WHERE (total_home_team_goal > 2);
    SET over2_scored_ht = ((var_over2 / var_total_journée)* 100);
    SELECT COUNT(journée) INTO var_w_scoring;
    FROM temp_tab WHERE (total_home_team_goal = 0);
    SET without_scoring_ht = var_w_scoring

    CREATE OR REPLACE TEMPORARY TABLE temp_tab_away
    SELECT journée, total_home_team_goal FROM summary
    WHERE away_team = NEW.away_team ORDER BY date_time DESC LIMIT 5;
    SELECT MAX(journée) INTO current_journée_var
    FROM temp_tab_away;
    SELECT AVG(total_home_team_goal) INTO average_at
    FROM temp_tab_away;
    SELECT total_home_team_goal INTO journée1_at
    FROM temp_tab_away WHERE journée = current_journée_var;
    SELECT ISNULL(journée1_at) INTO ONEorZERO;
    IF ONEorZERO = 1 THEN
        SET journée1_at = average_at;
    END IF;
    SELECT total_home_team_goal INTO journée2_at               
    FROM temp_tab_away WHERE journée = (current_journée_var - 1);
    SELECT ISNULL(journée2_at) INTO ONEorZERO;
    IF ONEorZERO = 1 THEN
        SET journée2_at = average_at;
    END IF;
    SELECT total_home_team_goal INTO journée3_at               
    FROM temp_tab_away WHERE journée = (current_journée_var - 2);
    SELECT ISNULL(journée3_at) INTO ONEorZERO;
    IF ONEorZERO = 1 THEN
        SET journée3_at = average_at;
    END IF;
    SELECT total_home_team_goal INTO journée4_at               
    FROM temp_tab_away WHERE journée = (current_journée_var - 3);
    SELECT ISNULL(journée4_at) INTO ONEorZERO;
    IF ONEorZERO = 1 THEN
        SET journée4_at = average_at;
    END IF;
    SELECT total_home_team_goal INTO journée5_at
    FROM temp_tab_away WHERE journée = (current_journée_var - 4);
    SELECT ISNULL(journée5_at) INTO ONEorZERO;
    IF ONEorZERO = 1 THEN
        SET journée5_at = average_at;
    END IF;
    SELECT COUNT(journée) INTO var_total_journée
    FROM temp_tab_away; 
    SELECT COUNT(journée) INTO var_over0
    FROM temp_tab_away WHERE (total_home_team_goal > 0);
    SET over0_conceded_at = ((var_over0 / var_total_journée)* 100);
    SELECT COUNT(journée) INTO var_over1
    FROM temp_tab_away WHERE (total_home_team_goal > 1);
    SET over1_conceded_at = ((var_over1 / var_total_journée)* 100);
    SELECT COUNT(journée) INTO var_over2
    FROM temp_tab_away WHERE (total_home_team_goal > 2);
    SET over2_conceded_at = ((var_over2 / var_total_journée)* 100);
    SELECT COUNT(journée) INTO var_clean_sheet
    FROM temp_tab_away WHERE (total_home_team_goal = 0);
    SET clean_sheet_at = var_clean_sheet;
    INSERT INTO scored_conceded_ds
    VALUES (NEW.journée, NEW.date_time, NEW.home_team, NEW.away_team, journée5_ht, journée4_ht, journée3_ht, journée2_ht, journée1_ht,
        journée5_at, journée4_at, journée3_at, journée2_at, journée1_at, over0_scored_ht, over1_scored_ht, over2_scored_ht,
        over0_conceded_at, over1_conceded_at, over2_conceded_at, without_scoring_ht, average_ht, clean_sheet_at, average_at,
        NEW.total_home_team_goal);
END //

CREATE TRIGGER IF NOT EXISTS beforeInsert__summary__conceded_scored_all_ds BEFORE INSERT ON summary FOR EACH ROW 
BEGIN
    DECLARE current_journée_var, journée1_ht, journée2_ht, journée3_ht, journée4_ht, journée5_ht,
    journée1_at, journée2_at, journée3_at, journée4_at, journée5_at TINYINT;
    DECLARE var_over0, var_over1, var_over2, var_w_scoring, var_clean_sheet TINYINT UNSIGNED;
    DECLARE over0_conceded_ht, over1_conceded_ht, over2_conceded_ht, over0_scored_at, over1_scored_at, over2_scored_at TINYINT UNSIGNED;
    DECLARE average_ht, average_at, ONEorZERO TINYINT UNSIGNED;
    CREATE OR REPLACE TEMPORARY TABLE temp_tab
    SELECT journée, total_away_goal FROM summary
    WHERE home_team = NEW.home_team OR away_team = NEW.home_team ORDER BY date_time DESC LIMIT 5;
    SELECT MAX(journée) into current_journée_var from temp_tab;
    SELECT AVG(total_away_goal) INTO average_ht FROM temp_tab;
    SELECT total_away_goal INTO journée1_ht
    FROM temp_tab WHERE journée = current_journée_var;
    SELECT ISNULL(journée1_ht) INTO ONEorZERO;
    IF ONEorZERO = 1 THEN
        SET journée1_ht = average_ht;
    END IF;
    SELECT total_away_goal INTO journée2_ht
    FROM temp_tab WHERE journée = (current_journée_var - 1);
    SELECT ISNULL(journée2_ht) INTO ONEorZERO;
    IF ONEorZERO = 1 THEN
        SET journée2_ht = average_ht;
    END IF;
    SELECT total_away_goal INTO journée3_ht
    FROM temp_tab WHERE journée = (current_journée_var - 2);
    SELECT ISNULL(journée3_ht) INTO ONEorZERO;
    IF ONEorZERO = 1 THEN
        SET journée3_ht = average_ht;
    END IF;
    SELECT total_away_goal INTO journée4_ht
    FROM temp_tab WHERE journée = (current_journée_var - 3);
    SELECT ISNULL(journée4_ht) INTO ONEorZERO;
    IF ONEorZERO = 1 THEN
        SET journée4_ht = average_ht;
    END IF;
    SELECT total_away_goal INTO journée5_ht
    FROM temp_tab WHERE journée = (current_journée_var - 4);
    SELECT ISNULL(journée5_ht) INTO ONEorZERO;
    IF ONEorZERO = 1 THEN
        SET journée5_ht = average_ht;
    END IF;
    SELECT COUNT(journée) INTO var_total_journée
    FROM temp_tab; 
    SELECT COUNT(journée) INTO var_over0
    FROM temp_tab WHERE (total_away_goal > 0);
    SET over0_conceded_ht = ((var_over0 / var_total_journée)* 100);
    SELECT COUNT(journée) INTO var_over1
    FROM temp_tab WHERE (total_away_goal > 1);
    SET over1_conceded_ht = ((var_over1 / var_total_journée)* 100);
    SELECT COUNT(journée) INTO var_over2
    FROM temp_tab WHERE (total_away_goal > 2);
    SET over2_conceded_ht = ((var_over2 / var_total_journée)* 100);
    SELECT COUNT(journée) INTO var_clean_sheet;
    FROM temp_tab WHERE (total_away_goal = 0);
    SET clean_sheet_ht = var_clean_sheet

    CREATE OR REPLACE TEMPORARY TABLE temp_tab_away
    SELECT journée, total_away_goal FROM summary
    WHERE away_team = NEW.away_team OR home_team = NEW.away_team ORDER BY date_time DESC LIMIT 5;
    SELECT MAX(journée) INTO current_journée_var
    FROM temp_tab_away;
    SELECT AVG(total_away_goal) INTO average_at
    FROM temp_tab_away;
    SELECT total_away_goal INTO journée1_at
    FROM temp_tab_away WHERE journée = current_journée_var;
    SELECT ISNULL(journée1_at) INTO ONEorZERO;
    IF ONEorZERO = 1 THEN
        SET journée1_at = average_at;
    END IF;
    SELECT total_away_goal INTO journée2_at               
    FROM temp_tab_away WHERE journée = (current_journée_var - 1);
    SELECT ISNULL(journée2_at) INTO ONEorZERO;
    IF ONEorZERO = 1 THEN
        SET journée2_at = average_at;
    END IF;
    SELECT total_away_goal INTO journée3_at               
    FROM temp_tab_away WHERE journée = (current_journée_var - 2);
    SELECT ISNULL(journée3_at) INTO ONEorZERO;
    IF ONEorZERO = 1 THEN
        SET journée3_at = average_at;
    END IF;
    SELECT total_away_goal INTO journée4_at               
    FROM temp_tab_away WHERE journée = (current_journée_var - 3);
    SELECT ISNULL(journée4_at) INTO ONEorZERO;
    IF ONEorZERO = 1 THEN
        SET journée4_at = average_at;
    END IF;
    SELECT total_away_goal INTO journée5_at
    FROM temp_tab_away WHERE journée = (current_journée_var - 4);
    SELECT ISNULL(journée5_at) INTO ONEorZERO;
    IF ONEorZERO = 1 THEN
        SET journée5_at = average_at;
    END IF;
    SELECT COUNT(journée) INTO var_total_journée
    FROM temp_tab; 
    SELECT COUNT(journée) INTO var_over0
    FROM temp_tab WHERE (total_away_goal > 0);
    SET over0_conceded_at = ((var_over0 / var_total_journée)* 100);
    SELECT COUNT(journée) INTO var_over1
    FROM temp_tab WHERE (total_away_goal > 1);
    SET over1_conceded_at = ((var_over1 / var_total_journée)* 100);
    SELECT COUNT(journée) INTO var_over2
    FROM temp_tab WHERE (total_away_goal > 2);
    SET over2_conceded_at = ((var_over2 / var_total_journée)* 100);
    SELECT COUNT(journée) INTO var_without_scoring
    FROM temp_tab_away WHERE (total_away_goal = 0);
    SET without_scoring_at = var_without_scoring;
    INSERT INTO conceded_scored_all_ds
    VALUES (NEW.journée, NEW.date_time, NEW.home_team, NEW.away_team, journée5_ht, journée4_ht, journée3_ht, journée2_ht, journée1_ht,
        journée5_at, journée4_at, journée3_at, journée2_at, journée1_at, over0_conceded_ht, over1_conceded_ht, over2_conceded_ht,
        over0_scored_at, over1_scored_at, over2_scored_at, clean_sheet_ht, average_ht, without_scoring_at, average_at,
        NEW.total_away_goal);
END //

CREATE TRIGGER IF NOT EXISTS beforeInsert__summary__conceded_scored_ds BEFORE INSERT ON summary FOR EACH ROW 
BEGIN
    DECLARE current_journée_var, journée1_ht, journée2_ht, journée3_ht, journée4_ht, journée5_ht,
    journée1_at, journée2_at, journée3_at, journée4_at, journée5_at TINYINT;
    DECLARE var_over0, var_over1, var_over2, var_w_scoring, var_clean_sheet TINYINT UNSIGNED;
    DECLARE over0_conceded_ht, over1_conceded_ht, over2_conceded_ht, over0_scored_at, over1_scored_at, over2_scored_at TINYINT UNSIGNED;
    DECLARE average_ht, average_at, ONEorZERO TINYINT UNSIGNED;
    CREATE OR REPLACE TEMPORARY TABLE temp_tab
    SELECT journée, total_away_goal FROM summary
    WHERE home_team = NEW.home_team ORDER BY date_time DESC LIMIT 5;
    SELECT MAX(journée) into current_journée_var from temp_tab;
    SELECT AVG(total_away_goal) INTO average_ht FROM temp_tab;
    SELECT total_away_goal INTO journée1_ht
    FROM temp_tab WHERE journée = current_journée_var;
    SELECT ISNULL(journée1_ht) INTO ONEorZERO;
    IF ONEorZERO = 1 THEN
        SET journée1_ht = average_ht;
    END IF;
    SELECT total_away_goal INTO journée2_ht
    FROM temp_tab WHERE journée = (current_journée_var - 1);
    SELECT ISNULL(journée2_ht) INTO ONEorZERO;
    IF ONEorZERO = 1 THEN
        SET journée2_ht = average_ht;
    END IF;
    SELECT total_away_goal INTO journée3_ht
    FROM temp_tab WHERE journée = (current_journée_var - 2);
    SELECT ISNULL(journée3_ht) INTO ONEorZERO;
    IF ONEorZERO = 1 THEN
        SET journée3_ht = average_ht;
    END IF;
    SELECT total_away_goal INTO journée4_ht
    FROM temp_tab WHERE journée = (current_journée_var - 3);
    SELECT ISNULL(journée4_ht) INTO ONEorZERO;
    IF ONEorZERO = 1 THEN
        SET journée4_ht = average_ht;
    END IF;
    SELECT total_away_goal INTO journée5_ht
    FROM temp_tab WHERE journée = (current_journée_var - 4);
    SELECT ISNULL(journée5_ht) INTO ONEorZERO;
    IF ONEorZERO = 1 THEN
        SET journée5_ht = average_ht;
    END IF;
    SELECT COUNT(journée) INTO var_total_journée
    FROM temp_tab; 
    SELECT COUNT(journée) INTO var_over0
    FROM temp_tab WHERE (total_away_goal > 0);
    SET over0_scored_ht = ((var_over0 / var_total_journée)* 100);
    SELECT COUNT(journée) INTO var_over1
    FROM temp_tab WHERE (total_away_goal > 1);
    SET over1_scored_ht = ((var_over1 / var_total_journée)* 100);
    SELECT COUNT(journée) INTO var_over2
    FROM temp_tab WHERE (total_away_goal > 2);
    SET over2_scored_ht = ((var_over2 / var_total_journée)* 100);
    SELECT COUNT(journée) INTO var_w_scoring;
    FROM temp_tab WHERE (total_away_goal = 0);
    SET clean_sheet_ht = var_clean_sheet;

    CREATE OR REPLACE TEMPORARY TABLE temp_tab_away
    SELECT journée, total_away_goal FROM summary 
    WHERE away_team = NEW.away_team ORDER BY date_time DESC LIMIT 5;
    SELECT MAX(journée) INTO current_journée_var 
    FROM temp_tab_away;
    SELECT AVG(total_away_goal) INTO average_at
    FROM temp_tab_away;
    SELECT total_away_goal INTO journée1_at
    FROM temp_tab_away WHERE journée = current_journée_var;
    SELECT ISNULL(journée1_at) INTO ONEorZERO;
    IF ONEorZERO = 1 THEN
        SET journée1_at = average_at;
    END IF;
    SELECT total_away_goal INTO journée2_at               
    FROM temp_tab_away WHERE journée = (current_journée_var - 1);
    SELECT ISNULL(journée2_at) INTO ONEorZERO;
    IF ONEorZERO = 1 THEN
        SET journée2_at = average_at;
    END IF;
    SELECT total_away_goal INTO journée3_at               
    FROM temp_tab_away WHERE journée = (current_journée_var - 2);
    SELECT ISNULL(journée3_at) INTO ONEorZERO;
    IF ONEorZERO = 1 THEN
        SET journée3_at = average_at;
    END IF;
    SELECT total_away_goal INTO journée4_at               
    FROM temp_tab_away WHERE journée = (current_journée_var - 3);
    SELECT ISNULL(journée4_at) INTO ONEorZERO;
    IF ONEorZERO = 1 THEN
        SET journée4_at = average_at;
    END IF;
    SELECT total_away_goal INTO journée5_at
    FROM temp_tab_away WHERE journée = (current_journée_var - 4);
    SELECT ISNULL(journée5_at) INTO ONEorZERO;
    IF ONEorZERO = 1 THEN
        SET journée5_at = average_at;
    END IF;
    SELECT COUNT(journée) INTO var_total_journée
    FROM temp_tab; 
    SELECT COUNT(journée) INTO var_over0
    FROM temp_tab WHERE (total_away_goal > 0);
    SET over0_scored_at = ((var_over0 / var_total_journée)* 100);
    SELECT COUNT(journée) INTO var_over1
    FROM temp_tab WHERE (total_away_goal > 1);
    SET over1_scored_at = ((var_over1 / var_total_journée)* 100);
    SELECT COUNT(journée) INTO var_over2
    FROM temp_tab WHERE (total_away_goal > 2);
    SET over2_scored_at = ((var_over2 / var_total_journée)* 100);
    SELECT COUNT(journée) INTO var_w_scoring
    FROM temp_tab_away WHERE (total_away_goal = 0);
    SET without_scoring_at = var_w_scoring;
    INSERT INTO conceded_scored_ds
    VALUES (NEW.journée, NEW.date_time, NEW.home_team, NEW.away_team, journée5_ht, journée4_ht, journée3_ht, journée2_ht, journée1_ht,
        journée5_at, journée4_at, journée3_at, journée2_at, journée1_at, over0_conceded_ht, over1_conceded_ht, over2_conceded_ht,
        over0_scored_at, over1_scored_at, over2_scored_at, clean_sheet_ht, average_ht, without_scoring_at, average_at,
        NEW.total_away_goal);
END //
