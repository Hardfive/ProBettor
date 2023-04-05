#Ceci est un ensemble de requête sql pour ma base de données rélationnel. L''idée est d''avoir un produit minimal viable (PMV)
#Eliminer tout superflu qui ne servirai pas aux tests primaires.

#home statistiques tables 
CREATE TABLE IF NOT EXISTS homeGlobal_statsL1 (
	team VARCHAR(30) NOT NULL,
	total_sum TINYINT UNSIGNED NOT NULL DEFAULT 0,
	total_avg DECIMAL(2,1) NOT NULL DEFAULT 0,
	total_max TINYINT UNSIGNED NOT NULL DEFAULT 0,
	total_min TINYINT UNSIGNED NOT NULL DEFAULT 0,
    total_btts TINYINT UNSIGNED NOT NULL DEFAULT 0,
	PRIMARY KEY (team));

CREATE TABLE IF NOT EXISTS homeScore_statsL1 (
	team VARCHAR(30) NOT NULL,
	total_sum TINYINT UNSIGNED NOT NULL DEFAULT 0,
	total_avg DECIMAL(2,1) NOT NULL DEFAULT 0,
	total_max TINYINT UNSIGNED NOT NULL DEFAULT 0,
	total_min TINYINT UNSIGNED NOT NULL DEFAULT 0,
    total_wSc TINYINT UNSIGNED NOT NULL DEFAULT 0,
	PRIMARY KEY (team),
	CONSTRAINT fk_homeScore_statsL1_homeGlobal_statsL1 FOREIGN KEY (team) REFERENCES homeGlobal_statsL1(team)
	ON DELETE CASCADE ON UPDATE CASCADE);

CREATE TABLE IF NOT EXISTS homeConcede_statsL1 (
	team VARCHAR(30) NOT NULL,
	total_sum TINYINT UNSIGNED NOT NULL DEFAULT 0,
	total_avg DECIMAL(2,1) NOT NULL DEFAULT 0,
	total_max TINYINT UNSIGNED NOT NULL DEFAULT 0,
	total_min TINYINT UNSIGNED NOT NULL DEFAULT 0,
    total_clS TINYINT UNSIGNED NOT NULL DEFAULT 0,
	PRIMARY KEY (team),
	CONSTRAINT fk_homeConcede_statsL1_homeGlobal_statsL1 FOREIGN KEY (team) REFERENCES homeGlobal_statsL1(team)
	ON DELETE CASCADE ON UPDATE CASCADE);

#away statistiques tables 
CREATE TABLE IF NOT EXISTS awayGlobal_statsL1 (
	team VARCHAR(30) NOT NULL,
	total_sum TINYINT UNSIGNED NOT NULL DEFAULT 0,
	total_avg DECIMAL(2,1) NOT NULL DEFAULT 0,
	total_max TINYINT UNSIGNED NOT NULL DEFAULT 0,
	total_min TINYINT UNSIGNED NOT NULL DEFAULT 0,
    total_btts TINYINT UNSIGNED NOT NULL DEFAULT 0,
	PRIMARY KEY (team));

CREATE TABLE IF NOT EXISTS awayScore_statsL1 (
	team VARCHAR(30) NOT NULL,
	total_sum TINYINT UNSIGNED NOT NULL DEFAULT 0,
	total_avg DECIMAL(2,1) NOT NULL DEFAULT 0,
	total_max TINYINT UNSIGNED NOT NULL DEFAULT 0,
	total_min TINYINT UNSIGNED NOT NULL DEFAULT 0,
    total_wSc TINYINT UNSIGNED NOT NULL DEFAULT 0,
	PRIMARY KEY (team),
	CONSTRAINT fk_awayScore_statsL1_awayGlobal_statsL1 FOREIGN KEY (team) REFERENCES awayGlobal_statsL1(team)
	ON DELETE CASCADE ON UPDATE CASCADE);

CREATE TABLE IF NOT EXISTS awayConcede_statsL1 (
	team VARCHAR(30) NOT NULL,
	total_sum TINYINT UNSIGNED NOT NULL DEFAULT 0,
	total_avg DECIMAL(2,1) NOT NULL DEFAULT 0,
	total_max TINYINT UNSIGNED NOT NULL DEFAULT 0,
	total_min TINYINT UNSIGNED NOT NULL DEFAULT 0,
    total_clS TINYINT UNSIGNED NOT NULL DEFAULT 0,
	PRIMARY KEY (team),
	CONSTRAINT fk_awayConcede_statsL1_awayGlobal_statsL1 FOREIGN KEY (team) REFERENCES awayGlobal_statsL1(team)
	ON DELETE CASCADE ON UPDATE CASCADE);

#home bins tables 
CREATE TABLE IF NOT EXISTS homeGlobal_binsL1 (
	team VARCHAR(30) NOT NULL,
	under0_5 TINYINT UNSIGNED NOT NULL DEFAULT 0, 
	under1_5 TINYINT UNSIGNED NOT NULL DEFAULT 0,
	under2_5 TINYINT UNSIGNED NOT NULL DEFAULT 0,
	over0_5 TINYINT UNSIGNED NOT NULL DEFAULT 0,
	over1_5 TINYINT UNSIGNED NOT NULL DEFAULT 0,
	over2_5 TINYINT UNSIGNED NOT NULL DEFAULT 0,
	PRIMARY KEY (team),
	CONSTRAINT fk_homeGlobal_binsL1_homeGlobal_statsL1 FOREIGN KEY (team) REFERENCES homeGlobal_statsL1(team)
	ON DELETE CASCADE ON UPDATE CASCADE);

CREATE TABLE IF NOT EXISTS homeScore_binsL1 (
	team VARCHAR(30) NOT NULL,
	under0_5 TINYINT UNSIGNED NOT NULL DEFAULT 0, 
	under1_5 TINYINT UNSIGNED NOT NULL DEFAULT 0,
	under2_5 TINYINT UNSIGNED NOT NULL DEFAULT 0,
	over0_5 TINYINT UNSIGNED NOT NULL DEFAULT 0,
	over1_5 TINYINT UNSIGNED NOT NULL DEFAULT 0,
	over2_5 TINYINT UNSIGNED NOT NULL DEFAULT 0,
	PRIMARY KEY (team),
	CONSTRAINT fk_homeScore_bins_homeGlobal_binsL1 FOREIGN KEY (team) REFERENCES homeGlobal_binsL1(team)
	ON DELETE CASCADE ON UPDATE CASCADE);

CREATE TABLE IF NOT EXISTS homeConcede_binsL1 (
	team VARCHAR(30) NOT NULL,
	under0_5 TINYINT UNSIGNED NOT NULL DEFAULT 0, 
	under1_5 TINYINT UNSIGNED NOT NULL DEFAULT 0,
	under2_5 TINYINT UNSIGNED NOT NULL DEFAULT 0,
	over0_5 TINYINT UNSIGNED NOT NULL DEFAULT 0,
	over1_5 TINYINT UNSIGNED NOT NULL DEFAULT 0,
	over2_5 TINYINT UNSIGNED NOT NULL DEFAULT 0,
	PRIMARY KEY (team),
	CONSTRAINT fk_homeConcede_binsL1_homeGLobal_binsL1 FOREIGN KEY (team) REFERENCES homeGlobal_binsL1(team)
	ON DELETE CASCADE ON UPDATE CASCADE);

#away bins tables 
CREATE TABLE IF NOT EXISTS awayGlobal_binsL1 (
	team VARCHAR(30) NOT NULL,
	under0_5 TINYINT UNSIGNED NOT NULL DEFAULT 0, 
	under1_5 TINYINT UNSIGNED NOT NULL DEFAULT 0,
	under2_5 TINYINT UNSIGNED NOT NULL DEFAULT 0,
	over0_5 TINYINT UNSIGNED NOT NULL DEFAULT 0,
	over1_5 TINYINT UNSIGNED NOT NULL DEFAULT 0,
	over2_5 TINYINT UNSIGNED NOT NULL DEFAULT 0,
	PRIMARY KEY (team),
	CONSTRAINT fk_awayGlobal_binsL1_awayGlobal_statsL1 FOREIGN KEY (team) REFERENCES awayGlobal_statsL1(team)
	ON DELETE CASCADE ON UPDATE CASCADE);

CREATE TABLE IF NOT EXISTS awayScore_binsL1 (
	team VARCHAR(30) NOT NULL,
	under0_5 TINYINT UNSIGNED NOT NULL DEFAULT 0, 
	under1_5 TINYINT UNSIGNED NOT NULL DEFAULT 0,
	under2_5 TINYINT UNSIGNED NOT NULL DEFAULT 0,
	over0_5 TINYINT UNSIGNED NOT NULL DEFAULT 0,
	over1_5 TINYINT UNSIGNED NOT NULL DEFAULT 0,
	over2_5 TINYINT UNSIGNED NOT NULL DEFAULT 0,
	PRIMARY KEY (team),
	CONSTRAINT fk_awayScore_binsL1_awayGlobal_binsL1 FOREIGN KEY (team) REFERENCES awayGlobal_binsL1(team)
	ON DELETE CASCADE ON UPDATE CASCADE);

CREATE TABLE IF NOT EXISTS awayConcede_binsL1 (
	team VARCHAR(30) NOT NULL,
	under0_5 TINYINT UNSIGNED NOT NULL DEFAULT 0, 
	under1_5 TINYINT UNSIGNED NOT NULL DEFAULT 0,
	under2_5 TINYINT UNSIGNED NOT NULL DEFAULT 0,
	over0_5 TINYINT UNSIGNED NOT NULL DEFAULT 0,
	over1_5 TINYINT UNSIGNED NOT NULL DEFAULT 0,
	over2_5 TINYINT UNSIGNED NOT NULL DEFAULT 0,
	PRIMARY KEY (team),
	CONSTRAINT fk_awayConcede_binsL1_awayGlobal_binsL1 FOREIGN KEY (team) REFERENCES awayGlobal_binsL1(team)
	ON DELETE CASCADE ON UPDATE CASCADE);
	
#home results table 
CREATE TABLE IF NOT EXISTS home_resultsL1 (
	mp TINYINT UNSIGNED NOT NULL,
	date_time DATETIME NOT NULL,
	home_team VARCHAR(30) NOT NULL,
	away_team VARCHAR(30) NOT NULL,
	1st_score TINYINT UNSIGNED NOT NULL,
	1st_concede TINYINT UNSIGNED NOT NULL,
	1st_global TINYINT UNSIGNED NOT NULL,
	2nd_score TINYINT UNSIGNED NOT NULL,
	2nd_concede TINYINT UNSIGNED NOT NULL,
	2nd_global TINYINT UNSIGNED NOT NULL,
	total_score TINYINT UNSIGNED NOT NULL,
	total_concede TINYINT UNSIGNED NOT NULL,
	global TINYINT UNSIGNED NOT NULL,
	PRIMARY KEY (date_time, home_team, away_team),
	CONSTRAINT fk_home_resultsL1_homeGlobal_statsL1 FOREIGN KEY (home_team) REFERENCES homeGlobal_statsL1(team)
	ON DELETE CASCADE ON UPDATE CASCADE);

#away results table 
CREATE TABLE IF NOT EXISTS away_resultsL1 (
	mp TINYINT UNSIGNED NOT NULL,
	date_time DATETIME NOT NULL,
	home_team VARCHAR(30) NOT NULL,
	away_team VARCHAR(30) NOT NULL,
	1st_score TINYINT UNSIGNED NOT NULL,
	1st_concede TINYINT UNSIGNED NOT NULL,
	1st_global TINYINT UNSIGNED NOT NULL,
	2nd_score TINYINT UNSIGNED NOT NULL,
	2nd_concede TINYINT UNSIGNED NOT NULL,
	2nd_global TINYINT UNSIGNED NOT NULL,
	total_score TINYINT UNSIGNED NOT NULL,
	total_concede TINYINT UNSIGNED NOT NULL,
	global TINYINT UNSIGNED NOT NULL,
	PRIMARY KEY (date_time, home_team, away_team),
	CONSTRAINT fk_away_resultsL1_awayGlobal_statsL1 FOREIGN KEY (away_team) REFERENCES awayGlobal_statsL1(team)
	ON DELETE CASCADE ON UPDATE CASCADE);

CREATE TABLE IF NOT EXISTS global_ranking (
    team VARCHAR(30) NOT NULL,
    mp TINYINT UNSIGNED NOT NULL DEFAULT 0,
    draw TINYINT UNSIGNED NOT NULL DEFAULT 0,
    lose TINYINT UNSIGNED NOT NULL DEFAULT 0,
    win TINYINT UNSIGNED NOT NULL DEFAULT 0,
    sco TINYINT UNSIGNED NOT NULL DEFAULT 0,
    con TINYINT UNSIGNED NOT NULL DEFAULT 0,
    diff, TINYINT NOT NULL DEFAULT 0,
    points TINYINT UNSIGNED NOT NULL DEFAULT 0,
    PRIMARY KEY(team),
	CONSTRAINT fk_global_ranking_homeGlobal_statsL1 FOREIGN KEY (team) REFERENCES homeGlobal_statsL1(team)
	ON DELETE CASCADE ON UPDATE CASCADE);
);

#home dataset tables
CREATE TABLE IF NOT EXISTS homeScore_datasetL1 (
	mp TINYINT UNSIGNED,
	date_time DATETIME NOT NULL,
	home_team VARCHAR(30) NOT NULL,
	away_team VARCHAR(30) NOT NULL,
	ranking TINYINT UNSIGNED NOT NULL,
	total_sum TINYINT UNSIGNED NOt NULL,
	total_avg DECIMAL(2,1) NOt NULL,
	total_max TINYINT UNSIGNED NOT NULL,
	total_min TINYINT UNSIGNED NOT NULL,
    total_wSc TINYINT UNSIGNED NOT NULL,
	under_0_5 TINYINT UNSIGNED NOT NULL,
	under_1_5 TINYINT UNSIGNED NOT NULL,
	under_2_5 TINYINT UNSIGNED NOT NULL,
	over_0_5 TINYINT UNSIGNED NOT NULL,
	over_1_5 TINYINT UNSIGNED NOT NULL,
	over_2_5 TINYINT UNSIGNED NOT NULL,
	total_score TINYINT UNSIGNED NOT NULL,
	PRimARY kEY (date_time, home_team, away_team));

CREATE TABLE IF NOT EXISTS homeConcede_datasetL1 (
	mp TINYINT UNSIGNED,
	date_time DATETIME NOT NULL,
	home_team VARCHAR(30) NOT NULL,
	away_team VARCHAR(30) NOT NULL,
	ranking TINYINT UNSIGNED NOT NULL,
	total_sum TINYINT UNSIGNED NOt NULL,
	total_avg DECIMAL(2,1) NOt NULL,
	total_max TINYINT UNSIGNED NOT NULL,
	total_min TINYINT UNSIGNED NOT NULL,
    total_clS TINYINT UNSIGNED NOT NULL,
	under_0_5 TINYINT UNSIGNED NOT NULL,
	under_1_5 TINYINT UNSIGNED NOT NULL,
	under_2_5 TINYINT UNSIGNED NOT NULL,
	over_0_5 TINYINT UNSIGNED NOT NULL,
	over_1_5 TINYINT UNSIGNED NOT NULL,
	over_2_5 TINYINT UNSIGNED NOT NULL,
	total_concede TINYINT UNSIGNED NOT NULL,
	PRimARY kEY (date_time, home_team, away_team));

CREATE TABLE IF NOT EXISTS homeGlobal_datasetL1 (
	mp TINYINT UNSIGNED,
	date_time DATETIME NOT NULL,
	home_team VARCHAR(30) NOT NULL,
	away_team VARCHAR(30) NOT NULL,
	ranking TINYINT UNSIGNED NOT NULL,
	total_sum TINYINT UNSIGNED NOt NULL,
	total_avg DECIMAL(2,1) NOt NULL,
	total_max TINYINT UNSIGNED NOT NULL,
	total_min TINYINT UNSIGNED NOT NULL,
    total_btts TINYINT UNSIGNED NOT NULL,
	under_0_5 TINYINT UNSIGNED NOT NULL,
	under_1_5 TINYINT UNSIGNED NOT NULL,
	under_2_5 TINYINT UNSIGNED NOT NULL,
	over_0_5 TINYINT UNSIGNED NOT NULL,
	over_1_5 TINYINT UNSIGNED NOT NULL,
	over_2_5 TINYINT UNSIGNED NOT NULL,
	global TINYINT UNSIGNED NOT NULL,
	PRimARY kEY (date_time, home_team, away_team));

#away dataset tables 
CREATE TABLE IF NOT EXISTS awayScore_datasetL1 (
	mp TINYINT UNSIGNED,
	date_time DATETIME NOT NULL,
	home_team VARCHAR(30) NOT NULL,
	away_team VARCHAR(30) NOT NULL,
	ranking TINYINT UNSIGNED NOT NULL,
	total_sum TINYINT UNSIGNED NOt NULL,
	total_avg DECIMAL(2,1) NOt NULL,
	total_max TINYINT UNSIGNED NOT NULL,
	total_min TINYINT UNSIGNED NOT NULL,
    total_wSc TINYINT UNSIGNED NOT NULL,
	under_0_5 TINYINT UNSIGNED NOT NULL,
	under_1_5 TINYINT UNSIGNED NOT NULL,
	under_2_5 TINYINT UNSIGNED NOT NULL,
	over_0_5 TINYINT UNSIGNED NOT NULL,
	over_1_5 TINYINT UNSIGNED NOT NULL,
	over_2_5 TINYINT UNSIGNED NOT NULL,
	total_score TINYINT UNSIGNED NOT NULL,
	PRimARY kEY (date_time, home_team, away_team));

CREATE TABLE IF NOT EXISTS awayConcede_datasetL1 (
	mp TINYINT UNSIGNED,
	date_time DATETIME NOT NULL,
	home_team VARCHAR(30) NOT NULL,
	away_team VARCHAR(30) NOT NULL,
	ranking TINYINT UNSIGNED NOT NULL,
	total_sum TINYINT UNSIGNED NOt NULL,
	total_avg DECIMAL(2,1) NOt NULL,
	total_max TINYINT UNSIGNED NOT NULL,
	total_min TINYINT UNSIGNED NOT NULL,
    total_clS TINYINT UNSIGNED NOT NULL,
	under_0_5 TINYINT UNSIGNED NOT NULL,
	under_1_5 TINYINT UNSIGNED NOT NULL,
	under_2_5 TINYINT UNSIGNED NOT NULL,
	over_0_5 TINYINT UNSIGNED NOT NULL,
	over_1_5 TINYINT UNSIGNED NOT NULL,
	over_2_5 TINYINT UNSIGNED NOT NULL,
	total_concede TINYINT UNSIGNED NOT NULL,
	PRimARY kEY (date_time, home_team, away_team));

CREATE TABLE IF NOT EXISTS awayGlobal_datasetL1 (
	mp TINYINT UNSIGNED,
	date_time DATETIME NOT NULL,
	home_team VARCHAR(30) NOT NULL,
	away_team VARCHAR(30) NOT NULL,
	ranking TINYINT UNSIGNED NOT NULL,
	total_sum TINYINT UNSIGNED NOt NULL,
	total_avg DECIMAL(2,1) NOt NULL,
	total_max TINYINT UNSIGNED NOT NULL,
	total_min TINYINT UNSIGNED NOT NULL,
    total_btts TINYINT UNSIGNED NOT NULL,
	under_0_5 TINYINT UNSIGNED NOT NULL,
	under_1_5 TINYINT UNSIGNED NOT NULL,
	under_2_5 TINYINT UNSIGNED NOT NULL,
	over_0_5 TINYINT UNSIGNED NOT NULL,
	over_1_5 TINYINT UNSIGNED NOT NULL,
	over_2_5 TINYINT UNSIGNED NOT NULL,
	global TINYINT UNSIGNED NOT NULL,
	PRimARY kEY (date_time, home_team, away_team));

#home_stats view
CREATE OR REPLACE VIEW V_homeScore_statsL1 AS 
SELECT ROW_NUMBER() OVER (ORDER BY total_avg DESC) AS ranking,
team,
total_sum,
total_avg,
total_max,
total_min,
total_wSc
FROM homeScore_statsL1;

CREATE OR REPLACE VIEW V_homeConcede_statsL1 AS
SELECT ROW_NUMBER() OVER (ORDER BY total_avg DESC) AS ranking,
team,
total_sum,
total_avg,
total_max,
total_min,
total_clS
FROM homeConcede_statsL1;

CREATE OR REPLACE VIEW V_homeGlobal_statsL1 AS
SELECT ROW_NUMBER() OVER (ORDER BY total_avg DESC) AS ranking,
team,
total_sum,
total_avg,
total_max,
total_min,
total_btts
FROM homeGlobal_statsL1;

#away_stats view
CREATE OR REPLACE VIEW V_awayScore_statsL1 AS 
SELECT ROW_NUMBER() OVER (ORDER BY total_avg DESC) AS ranking,
team,
total_sum,
total_avg,
total_max,
total_min,
total_wSc
FROM awayScore_statsL1;

CREATE OR REPLACE VIEW V_awayConcede_statsL1 AS
SELECT ROW_NUMBER() OVER (ORDER BY total_avg DESC) AS ranking,
team,
total_sum,
total_avg,
total_max,
total_min,
total_clS
FROM awayConcede_statsL1;

CREATE OR REPLACE VIEW V_awayGlobal_statsL1 AS
SELECT ROW_NUMBER() OVER (ORDER BY total_avg DESC) AS ranking,
team,
total_sum,
total_avg,
total_max,
total_min,
total_btts
FROM awayGlobal_statsL1;

CREATE OR REPLACE VIEW V_global_ranking AS 
SELECT ROW_NUMBER() OVER (ORDER BY PTS DESC) AS ranking
team,
mp,
draw,
lose,
win,
sco,
con,
diff,
points FROM global_ranking;

# Away results trigger
# Ce trigger se déclenche pendant l''insertion de données dans home_results. Mets a jour la table away_results
CREATE TRIGGER afterInsert_home_resultsL1_away_resultsL1 AFTER INSERT ON home_resultsL1 FOR EACH ROW
BEGIN

	INSERT INTO away_resultsL1 
	VALUES
	(NEW.mp, NEW.date_time, NEW.home_team, NEW.away_team, NEW.1st_concede, NEW.1st_score, NEW.1st_global, NEW.2nd_concede, NEW.2nd_score, NEW.2nd_global, NEW.total_score, NEW.total_concede, NEW.global);
END //



#home Trigger
# L''insertion des équipes dans homeGlobal_stats, déclenche l''insertion des équipes dans les tables "stats".
CREATE TRIGGER afterInsert_homeGlobal_statsL1 AFTER INSERT ON homeGlobal_statsL1 FOR EACH ROW
BEGIN
	INSERT INTO homeScore_statsL1 (team)
	VALUES (NEW.team);
	INSERT INTO homeConcede_statsL1 (team)
	VALUES (NEW.team);
	INSERT INTO awayGlobal_statsL1 (team)
	VALUES (NEW.team);
	INSERT INTO awayScore_statsL1 (team)
	VALUES (NEW.team);
	INSERT INTO awayConcede_statsL1 (team)
	VALUES (NEW.team);
	INSERT INTO homeGlobal_binsL1 (team)
	VALUES (NEW.team);
    INSERT INTO global_ranking (team)
    VALUES (NEW.team)
END //

# L''insertion des équipes dans homeGlobal_bins, déclenche l''insertion des équipes dans les tables "bins".
CREATE TRIGGER afterInsert_homeGlobal_binsL1 AFTER INSERT ON homeGlobal_binsL1 FOR EACH ROW
BEGIN
	INSERT INTO homeScore_binsL1 (team)
	VALUES (NEW.team);
	INSERT INTO homeConcede_binsL1 (team)
	VALUES (NEW.team);
	INSERT INTO awayGlobal_binsL1 (team)
	VALUES (NEW.team);
	INSERT INTO awayScore_binsL1 (team)
	VALUES (NEW.team);
	INSERT INTO awayConcede_binsL1 (team)
	VALUES (NEW.team);

END //

#home stats trigger
# L''insertion des résultats dans home_results, déclenche une serie d''opération pour remplir les tables de statistiques.
CREATE TRIGGER afterInsert_home_resultsL1_home__Stats AFTER INSERT ON home_resultsL1 FOR EACH ROW
BEGIN
	DECLARE sumVar_total_score TINYINT UNSIGNED;
	DECLARE avgVar_total_score DECIMAL(2,1);
	DECLARE maxVar_total_score TINYINT UNSIGNED;
	DECLARE minVar_total_score TINYINT UNSIGNED;
    DECLARE wScVar_total_score TINYINT UNSIGNED;
	DECLARE sumVar_total_concede TINYINT UNSIGNED;
	DECLARE avgVar_total_concede DECIMAL(2,1);
	DECLARE maxVar_total_concede TINYINT UNSIGNED;
	DECLARE minVar_total_concede TINYINT UNSIGNED;
	DECLARE clSVar_total_concede TINYINT UNSIGNED;
	DECLARE sumVar_global TINYINT UNSIGNED;
	DECLARE avgVar_global DECIMAL(2,1);
	DECLARE maxVar_global TINYINT UNSIGNED;
	DECLARE minVar_global TINYINT UNSIGNED;
	DECLARE bttsVar_global TINYINT UNSIGNED;

	SELECT SUM(total_score) INTO sumVar_total_score
	FROM home_resultsL1 WHERE home_team = NEW.home_team;
	UPDATE homeScore_statsL1 SET total_sum = sumVar_total_score WHERE team = NEW.home_team;
	SELECT AVG(total_score) INTO avgVar_total_score
	FROM home_resultsL1 WHERE home_team = NEW.home_team;
	UPDATE homeScore_statsL1 SET total_avg = avgVar_total_score WHERE team = NEW.home_team;
	SELECT MAX(total_score) INTO maxVar_total_score
	FROM home_resultsL1 WHERE home_team = NEW.home_team;
	UPDATE homeScore_statsL1 SET total_max = maxVar_total_score WHERE team = NEW.home_team;
	SELECT MIN(total_score) INTO minVar_total_score
	FROM home_resultsL1 WHERE home_team = NEW.home_team;
	UPDATE homeScore_statsL1 SET total_min = minVar_total_score WHERE team = NEW.home_team;
	SELECT COUNT(total_score) INTO wScVar_total_score
	FROM home_resultsL1 WHERE home_team = NEW.home_team AND (total_score < 1) ;
	SET wScVar_total_score = ((wScVar_total_score / total) * 100);
	UPDATE homeScore_statsL1 SET total_wSc = wScVar_total_score WHERE team = NEW.home_team;


	SELECT SUM(total_concede) INTO sumVar_total_concede
	FROM home_resultsL1 WHERE home_team = NEW.home_team;
	UPDATE homeConcede_statsL1 SET total_sum = sumVar_total_concede WHERE team = NEW.home_team;
	SELECT AVG(total_concede) INTO avgVar_total_concede
	FROM home_resultsL1 WHERE home_team = NEW.home_team;
	UPDATE homeConcede_statsL1 SET total_avg = avgVar_total_concede WHERE team = NEW.home_team;
	SELECT MAX(total_concede) INTO maxVar_total_concede
	FROM home_resultsL1 WHERE home_team = NEW.home_team;
	UPDATE homeConcede_statsL1 SET total_max = maxVar_total_concede WHERE team = NEW.home_team;
	SELECT MIN(total_concede) INTO minVar_total_concede
	FROM home_resultsL1 WHERE home_team = NEW.home_team;
	UPDATE homeConcede_statsL1 SET total_min = minVar_total_concede WHERE team = NEW.home_team;
	SELECT COUNT(*) INTO clSVar_total_concede
	FROM home_resultsL1 WHERE home_team = NEW.home_team AND (total_concede < 1 ) ;
	SET clSVar_total_concede = ((clSVar_total_concede / total) * 100);
	UPDATE homeConcede_statsL1 SET total_clS = clSVar_total_concede WHERE team = NEW.home_team;


	SELECT SUM(global) INTO sumVar_global
	FROM home_resultsL1 WHERE home_team = NEW.home_team;
	UPDATE homeGlobal_statsL1 SET total_sum = sumVar_global WHERE team = NEW.home_team;
	SELECT AVG(global) INTO avgVar_global
	FROM home_resultsL1 WHERE home_team = NEW.home_team;
	UPDATE homeGlobal_statsL1 SET total_avg = avgVar_global WHERE team = NEW.home_team;
	SELECT MAX(global) INTO maxVar_global
	FROM home_resultsL1 WHERE home_team = NEW.home_team;
	UPDATE homeGlobal_statsL1 SET total_max = maxVar_global WHERE team = NEW.home_team;
	SELECT MIN(global) INTO minVar_global
	FROM home_resultsL1 WHERE home_team = NEW.home_team;
	UPDATE homeGlobal_statsL1 SET total_min = minVar_global WHERE team = NEW.home_team;
	SELECT COUNT(*) INTO bttsVar_global
	FROM home_resultsL1 WHERE home_team = NEW.home_team AND (total_score >= 1 AND total_concede >=1 ) ;
	SET bttsVar_total_score = ((bttsVar_global / total) * 100);
	UPDATE homeGlobal_statsL1 SET total_btts = bttsVar_global WHERE team = NEW.home_team;
END //


#away stats trigger
CREATE TRIGGER afterInsert_away_resultsL1_away__Stats AFTER INSERT ON away_resultsL1 FOR EACH ROW
BEGIN
	
	DECLARE sumVar_total_score TINYINT UNSIGNED;
	DECLARE avgVar_total_score DECIMAL(2,1);
	DECLARE maxVar_total_score TINYINT UNSIGNED;
	DECLARE minVar_total_score TINYINT UNSIGNED;
	DECLARE wScVar_total_score TINYINT UNSIGNED;
	DECLARE sumVar_total_concede TINYINT UNSIGNED;
	DECLARE avgVar_total_concede DECIMAL(2,1);
	DECLARE maxVar_total_concede TINYINT UNSIGNED;
	DECLARE minVar_total_concede TINYINT UNSIGNED;
	DECLARE clSVar_total_concede TINYINT UNSIGNED;
	DECLARE sumVar_global TINYINT UNSIGNED;
	DECLARE avgVar_global DECIMAL(2,1);
	DECLARE maxVar_global TINYINT UNSIGNED;
	DECLARE minVar_global TINYINT UNSIGNED;
	DECLARE bttsVar_global TINYINT UNSIGNED;

	SELECT SUM(total_score) INTO sumVar_total_score
	FROM away_resultsL1 WHERE away_team = NEW.away_team;
	UPDATE awayScore_statsL1 SET total_sum = sumVar_total_score WHERE team = NEW.away_team;
	SELECT AVG(total_score) INTO avgVar_total_score
	FROM away_resultsL1 WHERE away_team = NEW.away_team;
	UPDATE awayScore_statsL1 SET total_avg = avgVar_total_score WHERE team = NEW.away_team;
	SELECT MAX(total_score) INTO maxVar_total_score
	FROM away_resultsL1 WHERE away_team = NEW.away_team;
	UPDATE awayScore_statsL1 SET total_max = maxVar_total_score WHERE team = NEW.away_team;
	SELECT MIN(total_score) INTO minVar_total_score
	FROM away_resultsL1 WHERE away_team = NEW.away_team;
	UPDATE awayScore_statsL1 SET total_min = minVar_total_score WHERE team = NEW.away_team;
	SELECT COUNT(total_score) INTO wScVar_total_score
	FROM away_resultsL1 WHERE away_team = NEW.away_team AND (total_score < 1 ) ;
	SET wScVar_total_score = ((wScVar_total_score / total) * 100);
	UPDATE awayConcede_statsL1 SET total_wSc = wScVar_total_score WHERE team = NEW.away_team;

	SELECT SUM(total_concede) INTO sumVar_total_concede
	FROM away_resultsL1 WHERE away_team = NEW.away_team;
	UPDATE awayConcede_statsL1 SET total_sum = sumVar_total_concede WHERE team = NEW.away_team;
	SELECT AVG(total_concede) INTO avgVar_total_concede
	FROM away_resultsL1 WHERE away_team = NEW.away_team;
	UPDATE awayConcede_statsL1 SET total_avg = avgVar_total_concede WHERE team = NEW.away_team;
	SELECT MAX(total_concede) INTO maxVar_total_concede
	FROM away_resultsL1 WHERE away_team = NEW.away_team;
	UPDATE awayConcede_statsL1 SET total_max = maxVar_total_concede WHERE team = NEW.away_team;
	SELECT MIN(total_concede) INTO minVar_total_concede
	FROM away_resultsL1 WHERE away_team = NEW.away_team;
	UPDATE awayConcede_statsL1 SET total_min = minVar_total_concede WHERE team = NEW.away_team;
	SELECT COUNT(total_concede) INTO clSVar_total_concede
	FROM away_resultsL1 WHERE away_team = NEW.away_team AND (total_concede < 1 ) ;
	SET clSVar_total_concede = ((clSVar_total_concede / total) * 100);
	UPDATE awayConcede_statsL1 SET total_clS = clSVar_total_concede WHERE team = NEW.away_team;

	SELECT SUM(global) INTO sumVar_global
	FROM away_resultsL1 WHERE away_team = NEW.away_team;
	UPDATE awayGlobal_statsL1 SET total_sum = sumVar_global WHERE team = NEW.away_team;
	SELECT AVG(global) INTO avgVar_global
	FROM away_resultsL1 WHERE away_team = NEW.away_team;
	UPDATE awayGlobal_statsL1 SET total_avg = avgVar_global WHERE team = NEW.away_team;
	SELECT MAX(global) INTO maxVar_global
	FROM away_resultsL1 WHERE away_team = NEW.away_team;
	UPDATE awayGlobal_statsL1 SET total_max = maxVar_global WHERE team = NEW.away_team;
	SELECT MIN(global) INTO minVar_global
	FROM away_resultsL1 WHERE away_team = NEW.away_team;
	UPDATE awayGlobal_statsL1 SET total_min = minVar_global WHERE team = NEW.away_team;
	SELECT COUNT(*) INTO bttsVar_global
	FROM away_resultsL1 WHERE away_team = NEW.away_team AND (total_score >= 1 AND total_concede >=1 ) ;
	SET bttsVar_total_score = ((bttsVar_global / total) * 100);
	UPDATE awayGlobal_statsL1 SET total_btts = bttsVar_global WHERE team = NEW.away_team;
END //


#home bins trigger 
# L''insertion des resultats dans home_results déclenche une série d''opération dans les tables "bins"
CREATE TRIGGER afterInsert_home_resultsL1_home__bins AFTER INSERT ON home_resultsL1 FOR EACH ROW
BEGIN
	DECLARE total, var0_under, var1_under, var2_under, var0_over, var1_over, var2_over TINYINT UNSIGNED;
	SELECT COUNT(total_score) INTO total
	FROM home_resultsL1 WHERE home_team = NEW.home_team;
	# under scored 
	SELECT COUNT(total_score) INTO var0_under
	FROM home_resultsL1 WHERE home_team = NEW.home_team AND (total_score < 1) ;
	SET var0_under = ((var0_under / total) * 100);
	UPDATE homeScore_binsL1 SET under0_5 = var0_under WHERE team = NEW.home_team;
	SELECT COUNT(total_score) INTO var1_under
	FROM home_resultsL1 WHERE home_team = NEW.home_team AND (total_score <= 1) ;
	SET var1_under = ((var1_under / total) * 100);
	UPDATE homeScore_binsL1 SET under1_5 = var1_under WHERE team = NEW.home_team;
	SELECT COUNT(total_score) INTO var2_under
	FROM home_resultsL1 WHERE home_team = NEW.home_team AND (total_score <= 2) ;
	SET var2_under = ((var2_under / total) * 100);
	UPDATE homeScore_binsL1 SET under2_5 = var2_under WHERE team = NEW.home_team;
	# over scored	
	SELECT COUNT(total_score) INTO var0_over
	FROM home_resultsL1 WHERE home_team = NEW.home_team AND (total_score >= 1) ;
	SET var0_over = ((var0_over / total) * 100);
	UPDATE homeScore_binsL1 SET over0_5 = var0_over WHERE team = NEW.home_team;
	SELECT COUNT(total_score) INTO var1_over
	FROM home_resultsL1 WHERE home_team = NEW.home_team AND (total_score >= 2) ;
	SET var1_over = ((var1_over / total) * 100);
	UPDATE homeScore_binsL1 SET over1_5 = var1_over WHERE team = NEW.home_team;
	SELECT COUNT(total_score) INTO var2_over
	FROM home_resultsL1 WHERE home_team = NEW.home_team AND (total_score >= 3) ;
	SET var2_over = ((var2_over / total) * 100);
	UPDATE homeScore_binsL1 SET over2_5 = var2_over WHERE team = NEW.home_team;
	
	# under concede 
	SELECT COUNT(total_concede) INTO var0_under
	FROM home_resultsL1 WHERE home_team = NEW.home_team AND (total_concede < 1) ;
	SET var0_under = ((var0_under / total) * 100);
	UPDATE homeConcede_binsL1 SET under0_5 = var0_under WHERE team = NEW.home_team;
	SELECT COUNT(total_concede) INTO var1_under
	FROM home_resultsL1 WHERE home_team = NEW.home_team AND (total_concede <= 1) ;
	SET var1_under = ((var1_under / total) * 100);
	UPDATE homeConcede_binsL1 SET under1_5 = var1_under WHERE team = NEW.home_team;
	SELECT COUNT(total_concede) INTO var2_under
	FROM home_resultsL1 WHERE home_team = NEW.home_team AND (total_concede <= 2) ;
	SET var2_under = ((var2_under / total) * 100);
	UPDATE homeConcede_binsL1 SET under2_5 = var2_under WHERE team = NEW.home_team;
	# over concede	
	SELECT COUNT(total_concede) INTO var0_over
	FROM home_resultsL1 WHERE home_team = NEW.home_team AND (total_concede >= 1) ;
	SET var0_over = ((var0_over / total) * 100);
	UPDATE homeConcede_binsL1 SET over0_5 = var0_over WHERE team = NEW.home_team;
	SELECT COUNT(total_concede) INTO var1_over
	FROM home_resultsL1 WHERE home_team = NEW.home_team AND (total_concede >= 2) ;
	SET var1_over = ((var1_over / total) * 100);
	UPDATE homeConcede_binsL1 SET over1_5 = var1_over WHERE team = NEW.home_team;
	SELECT COUNT(total_concede) INTO var2_over
	FROM home_resultsL1 WHERE home_team = NEW.home_team AND (total_concede >= 3) ;
	SET var2_over = ((var2_over / total) * 100);
	UPDATE homeConcede_binsL1 SET over2_5 = var2_over WHERE team = NEW.home_team;
	 
	# under global 
	SELECT COUNT(global) INTO var0_under
	FROM home_resultsL1 WHERE home_team = NEW.home_team AND (global < 1);
	SET var0_under = ((var0_under / total) * 100);
	UPDATE homeGlobal_binsL1 SET under0_5 = var0_under WHERE team = NEW.home_team;
	SELECT COUNT(global) INTO var1_under
	FROM home_resultsL1 WHERE home_team = NEW.home_team AND (global <= 1) ;
	SET var1_under = ((var1_under / total) * 100);
	UPDATE homeGlobal_binsL1 SET under1_5 = var1_under WHERE team = NEW.home_team;
	SELECT COUNT(global) INTO var2_under
	FROM home_resultsL1 WHERE home_team = NEW.home_team AND (global <= 2) ;
	SET var2_under = ((var2_under / total) * 100);
	UPDATE homeGlobal_binsL1 SET under2_5 = var2_under WHERE team = NEW.home_team;
	# over global	
	SELECT COUNT(global) INTO var0_over
	FROM home_resultsL1 WHERE home_team = NEW.home_team AND (global >= 1) ;
	SET var0_over = ((var0_over / total) * 100);
	UPDATE homeGlobal_binsL1 SET over0_5 = var0_over WHERE team = NEW.home_team;
	SELECT COUNT(global) INTO var1_over
	FROM home_resultsL1 WHERE home_team = NEW.home_team AND (global >= 2) ;
	SET var1_over = ((var1_over / total) * 100);
	UPDATE homeGlobal_binsL1 SET over1_5 = var1_over WHERE team = NEW.home_team;
	SELECT COUNT(global) INTO var2_over
	FROM home_resultsL1 WHERE home_team = NEW.home_team AND (global >= 3) ;
	SET var2_over = ((var2_over / total) * 100);
	UPDATE homeGlobal_binsL1 SET over2_5 = var2_over WHERE team = NEW.home_team;
END //


#away bins trigger 
CREATE TRIGGER afterInsert_away_resultsL1_away__bins AFTER INSERT ON away_resultsL1 FOR EACH ROW
BEGIN
	DECLARE total, var0_under, var1_under, var2_under, var0_over, var1_over, var2_over TINYINT UNSIGNED;
	SELECT COUNT(total_score) INTO total
	FROM away_resultsL1 WHERE away_team = NEW.away_team;
	# under scored 
	SELECT COUNT(total_score) INTO var0_under
	FROM away_resultsL1 WHERE away_team = NEW.away_team AND (total_score < 1) ;
	SET var0_under = ((var0_under / total) * 100);
	UPDATE awayScore_binsL1 SET under0_5 = var0_under WHERE team = NEW.away_team;
	SELECT COUNT(total_score) INTO var1_under
	FROM away_resultsL1 WHERE away_team = NEW.away_team AND (total_score <= 1) ;
	SET var1_under = ((var1_under / total) * 100);
	UPDATE awayScore_binsL1 SET under1_5 = var1_under WHERE team = NEW.away_team;
	SELECT COUNT(total_score) INTO var2_under
	FROM away_resultsL1 WHERE away_team = NEW.away_team AND (total_score <= 2) ;
	SET var2_under = ((var2_under / total) * 100);
	UPDATE awayScore_binsL1 SET under2_5 = var2_under WHERE team = NEW.away_team;
	# over scored	
	SELECT COUNT(total_score) INTO var0_over
	FROM away_resultsL1 WHERE away_team = NEW.away_team AND (total_score >= 1) ;
	SET var0_over = ((var0_over / total) * 100);
	UPDATE awayScore_binsL1 SET over0_5 = var0_over WHERE team = NEW.away_team;
	SELECT COUNT(total_score) INTO var1_over
	FROM away_resultsL1 WHERE away_team = NEW.away_team AND (total_score >= 2) ;
	SET var1_over = ((var1_over / total) * 100);
	UPDATE awayScore_binsL1 SET over1_5 = var1_over WHERE team = NEW.away_team;
	SELECT COUNT(total_score) INTO var2_over
	FROM away_resultsL1 WHERE away_team = NEW.away_team AND (total_score >= 3) ;
	SET var2_over = ((var2_over / total) * 100);
	UPDATE awayScore_binsL1 SET over2_5 = var2_over WHERE team = NEW.away_team;
	
	# under concede 
	SELECT COUNT(total_concede) INTO var0_under
	FROM away_resultsL1 WHERE away_team = NEW.away_team AND (total_concede < 1) ;
	SET var0_under = ((var0_under / total) * 100);
	UPDATE awayConcede_binsL1 SET under0_5 = var0_under WHERE team = NEW.away_team;
	SELECT COUNT(total_concede) INTO var1_under
	FROM away_resultsL1 WHERE away_team = NEW.away_team AND (total_concede <= 1) ;
	SET var1_under = ((var1_under / total) * 100);
	UPDATE awayConcede_binsL1 SET under1_5 = var1_under WHERE team = NEW.away_team;
	SELECT COUNT(total_concede) INTO var2_under
	FROM away_resultsL1 WHERE away_team = NEW.away_team AND (total_concede <= 2) ;
	SET var2_under = ((var2_under / total) * 100);
	UPDATE awayConcede_binsL1 SET under2_5 = var2_under WHERE team = NEW.away_team;
	# over concede	
	SELECT COUNT(total_concede) INTO var0_over
	FROM away_resultsL1 WHERE away_team = NEW.away_team AND (total_concede >= 1) ;
	SET var0_over = ((var0_over / total) * 100);
	UPDATE awayConcede_binsL1 SET over0_5 = var0_over WHERE team = NEW.away_team;
	SELECT COUNT(total_concede) INTO var1_over
	FROM away_resultsL1 WHERE away_team = NEW.away_team AND (total_concede >= 2) ;
	SET var1_over = ((var1_over / total) * 100);
	UPDATE awayConcede_binsL1 SET over1_5 = var1_over WHERE team = NEW.away_team;
	SELECT COUNT(total_concede) INTO var2_over
	FROM away_resultsL1 WHERE away_team = NEW.away_team AND (total_concede >= 3) ;
	SET var2_over = ((var2_over / total) * 100);
	UPDATE awayConcede_binsL1 SET over2_5 = var2_over WHERE team = NEW.away_team;
	 
	# under global 
	SELECT COUNT(global) INTO var0_under
	FROM away_resultsL1 WHERE away_team = NEW.away_team AND (global < 1);
	SET var0_under = ((var0_under / total) * 100);
	UPDATE awayGlobal_binsL1 SET under0_5 = var0_under WHERE team = NEW.away_team;
	SELECT COUNT(global) INTO var1_under
	FROM away_resultsL1 WHERE away_team = NEW.away_team AND (global <= 1) ;
	SET var1_under = ((var1_under / total) * 100);
	UPDATE awayGlobal_binsL1 SET under1_5 = var1_under WHERE team = NEW.away_team;
	SELECT COUNT(global) INTO var2_under
	FROM away_resultsL1 WHERE away_team = NEW.away_team AND (global <= 2) ;
	SET var2_under = ((var2_under / total) * 100);
	UPDATE awayGlobal_binsL1 SET under2_5 = var2_under WHERE team = NEW.away_team;
	# over global	
	SELECT COUNT(global) INTO var0_over
	FROM away_resultsL1 WHERE away_team = NEW.away_team AND (global >= 1) ;
	SET var0_over = ((var0_over / total) * 100);
	UPDATE awayGlobal_binsL1 SET over0_5 = var0_over WHERE team = NEW.away_team;
	SELECT COUNT(global) INTO var1_over
	FROM away_resultsL1 WHERE away_team = NEW.away_team AND (global >= 2) ;
	SET var1_over = ((var1_over / total) * 100);
	UPDATE awayGlobal_binsL1 SET over1_5 = var1_over WHERE team = NEW.away_team;
	SELECT COUNT(global) INTO var2_over
	FROM away_resultsL1 WHERE away_team = NEW.away_team AND (global >= 3) ;
	SET var2_over = ((var2_over / total) * 100);
	UPDATE awayGlobal_binsL1 SET over2_5 = var2_over WHERE team = NEW.away_team;
END //

#ranking trigger
# ce Trigger mets a jour les résultats de championnats
CREATE TRIGGER afterInsert_home_resultsL1_global_ranking AFTER INSERT ON home_results FOR EACH ROW
BEGIN
    DECLARE hScore_sum_hT, aScore_sum_hT, hScore_sum_aT, aScore_sum_aT TINYINT UNSIGNED NOT NULL;
    DECLARE hConcede_sum_hT, aConcede_sum_hT, hConcede_sum_aT, aConcede_sum_aT TINYINT UNSIGNED NOT NULL;
    
    SELECT total_sum INTO hScore_sum_hT
    FROM homeScore_stats WHERE team = NEW.home_team;
    SELECT total_sum INTO aScore_sum_hT
    FROM awayScore_stats WHERE team = NEW.home_team;
    SELECT total_sum INTO hScore_sum_aT
    FROM awayScore_stats WHERE team = NEW.away_team;
    SELECT total_sum INTO aScore_sum_aT
    FROM awayScore_stats WHERE team = NEW.away_team;
    UPDATE global_ranking
    SET sco = hScore_sum_hT + aScore_sum_hT WHERE team = NEW.home_team;
    UPDATE global_ranking
    SET con = hConcede_sum_hT + aConcede_sum_hT WHERE team = NEW.home_team;
    UPDATE global_ranking
    SET diff = (hScore_sum_hT + hScore_sum_aT) - (hConcede_sum_hT + hConcede_sum_aT)
    WHERE team = NEW.home_team;
    UPDATE global_ranking
    SET sco = hScore_sum_aT + aScore_sum_aT WHERE team = NEW.away_team;
    UPDATE global_ranking
    SET con = hConcede_sum_aT + aConcede_sum_aT WHERE team = NEW.away_team;
    UPDATE global_ranking
    SET diff = (aScore_sum_hT + aScore_sum_aT) - (aConcede_sum_hT + aConcede_sum_aT)
    WHERE team = NEW.away_team;
    IF NEW.total_score > NEW.total_concede
        UPDATE global_ranking
        SET points = OLD.points + 3 WHERE team = NEW.home_team;
        UPDATE global_ranking
        SET win = OLD.win + 1 WHERE team = NEW.home_team;
        UPDATE global_ranking
        SET lose = OLD.lose + 1 WHERE team = NEW.away_team;
    ELSE IF NEW.total_score < NEW.total_concede
        UPDATE global_ranking
        SET points = OLD.points + 3 WHERE team = NEW.away_team;
        UPDATE global_ranking
        SET win = OLD.win + 1 WHERE team = NEW.away_team;
        UPDATE global_ranking
        SET lose = OLD.lose + 1 WHERE team = NEW.home_team;
    ELSE
        UPDATE global_ranking
        SET points = OLD.points + 1 WHERE team = NEW.home_team;
        UPDATE global_ranking
        SET draw = OLD.draw + 1 WHERE team = NEW.home_team;
        UPDATE global_ranking
        SET points = OLD.points + 1 WHERE team = NEW.away_team;
        UPDATE global_ranking
        SET draw = OLD.draw + 1 WHERE team = NEW.away_team;
END //


# Ces triggers mettent a jour les dataset en puisant dans les tables "statistiques, bins, results".
# Les dataset contiennes les stats des équipes avant un match.
#home trigger dataset
CREATE TRIGGER beforeInsert_homeresultsL1_home_dataset BEFORE INSERT ON home_resultsL1 FOR EACH ROW
BEGIN
	DECLARE var_rank, var_min, var_max, var_sum, var_wSc, var_clS, var_btts TINYINT UNSIGNED;
	DECLARE var_avg DECIMAL(2,1);
	DECLARE var_under0, var_under1, var_under2, var_over0, var_over1, var_over2  TINYINT UNSIGNED;

	SELECT ranking, total_sum, total_avg, total_max, total_min, total_wSc INTO var_rank, var_sum, var_avg, var_max, var_min, var_wSc
	fROm V_homeScore_statsL1 WHERE team = NEW.home_team;
	SELECT under0_5, under1_5, under2_5, over0_5, over1_5, over1_5 INTO var_under0, var_under1, var_under2, var_over0, var_over1, var_over2
	FROM homeScore_binsL1 WHERE team = NEW.home_team;
	INSERT INTO homeScore_datasetL1 
	VALUES (NEW.mp, NEW.date_time, NEW.home_team, NEW.away_team, var_rank, var_sum, var_avg, var_max, var_min, var_wSc, var_under0, var_under1, var_under2, var_over0, var_over1, var_over2, NEW.total_score);
	
	SELECT ranking, total_sum, total_avg, total_max, total_min, total_clS INTO var_rank, var_sum, var_avg, var_max, var_min, var_clS
	fROm V_homeConcede_statsL1 WHERE team = NEW.home_team ;
	SELECT under0_5, under1_5, under2_5, over0_5, over1_5, over1_5 INTO var_under0, var_under1, var_under2, var_over0, var_over1, var_over2
	FROM homeConcede_binsL1 WHERE team = NEW.home_team;
	INSERT INTO homeConcede_datasetL1 
	VALUES (NEW.mp, NEW.date_time, NEW.home_team, NEW.away_team, var_rank, var_sum, var_avg, var_max, var_min, var_clS, var_under0, var_under1, var_under2, var_over0, var_over1, var_over2, NEW.total_concede);

	SELECT ranking, total_sum, total_avg, total_max, total_min, total_btts INTO var_rank, var_sum, var_avg, var_max, var_min, var_btts
	fROm V_homeGlobal_statsL1 WHERE team = NEW.home_team ;
	SELECT under0_5, under1_5, under2_5, over0_5, over1_5, over1_5 INTO var_under0, var_under1, var_under2, var_over0, var_over1, var_over2
	FROM homeGlobal_binsL1 WHERE team = NEW.home_team;
	INSERT INTO homeGlobal_datasetL1 
	VALUES (NEW.mp, NEW.date_time, NEW.home_team, NEW.away_team, var_rank, var_sum, var_avg, var_max, var_min, var_btts, var_under0, var_under1, var_under2, var_over0, var_over1, var_over2, NEW.global);
END //


#away trigger dataset
CREATE TRIGGER beforeInsert_away_resultsL1_away__dataset BEFORE INSERT ON away_resultsL1 FOR EACH ROW
BEGIN
	DECLARE var_rank, var_min, var_max, var_sum, var_wSc, var_clS, var_btts TINYINT UNSIGNED;
	DECLARE var_avg DECIMAL(2,1);
	DECLARE var_under0, var_under1, var_under2, var_over0, var_over1, var_over2  TINYINT UNSIGNED;

	SELECT ranking, total_sum, total_avg, total_max, total_min, total_wSc INTO var_rank, var_sum, var_avg, var_max, var_min, var_wSc
	fROm V_awayScore_statsL1 WHERE team = NEW.away_team;
	SELECT under0_5, under1_5, under2_5, over0_5, over1_5, over1_5 INTO var_under0, var_under1, var_under2, var_over0, var_over1, var_over2
	FROM awayScore_binsL1 WHERE team = NEW.away_team;
	INSERT INTO awayScore_datasetL1 
	VALUES (NEW.mp, NEW.date_time, NEW.home_team, NEW.away_team, var_rank, var_sum, var_avg, var_max, var_min, var_wSc, var_under0, var_under1, var_under2, var_over0, var_over1, var_over2, NEW.total_score);
	
	SELECT ranking, total_sum, total_avg, total_max, total_min, total_clS INTO var_rank, var_sum, var_avg, var_max, var_min, var_clS
	fROm V_awayConcede_statsL1 WHERE team = NEW.away_team ;
	SELECT under0_5, under1_5, under2_5, over0_5, over1_5, over1_5 INTO var_under0, var_under1, var_under2, var_over0, var_over1, var_over2
	FROM awayConcede_binsL1 WHERE team = NEW.away_team;
	INSERT INTO awayConcede_datasetL1 
	VALUES (NEW.mp, NEW.date_time, NEW.home_team, NEW.away_team, var_rank, var_sum, var_avg, var_max, var_min, var_clS, var_under0, var_under1, var_under2, var_over0, var_over1, var_over2, NEW.total_concede);

	SELECT ranking, total_sum, total_avg, total_max, total_min, total_btts INTO var_rank, var_sum, var_avg, var_max, var_min, var_btts
	fROm V_awayGlobal_statsL1 WHERE team = NEW.away_team ;
	SELECT under0_5, under1_5, under2_5, over0_5, over1_5, over1_5 INTO var_under0, var_under1, var_under2, var_over0, var_over1, var_over2
	FROM awayGlobal_binsL1 WHERE team = NEW.away_team;
	INSERT INTO awayGlobal_datasetL1 
	VALUES (NEW.mp, NEW.date_time, NEW.home_team, NEW.away_team, var_rank, var_sum, var_avg, var_max, var_min, var_btts, var_under0, var_under1, var_under2, var_over0, var_over1, var_over2, NEW.global);
END //
