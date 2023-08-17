# Sql request for football database
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
	PRIMARY KEY (date_time, home_team, away_team)
);
CREATE TABLE IF NOT EXISTS fixture (
    journée TINYINT UNSIGNED NOT NULL,
    date_time DATETIME NOT NULL,
    home_team VARCHAR(30) NOT NULL,
    away_team VARCHAR(30) NOT NULL,
	PRIMARY KEY (date_time, home_team, away_team)
);
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
    home_team_exg DECIMAL(3,2) UNSIGNED NOT NULL,
    away_team_exg DECIMAL(3,2) NOT NULL,
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
