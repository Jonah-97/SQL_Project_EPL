CREATE DATABASE IF NOT EXISTS epl_project_data;

USE epl_project_data;

CREATE TABLE pl_teams
(
	team_id VARCHAR(6) PRIMARY KEY,
	team_name VARCHAR(30) NOT NULL,
	ranking INT, 
	team_goals_scored INT, 
	team_goals_conceded INT, 
	wins INT, 
	draws INT, 
	losses INT, 
	points INT
)
;

CREATE TABLE pl_players
(
	player_id VARCHAR(40) PRIMARY KEY,
	team_id VARCHAR(6), 
	player_name VARCHAR(50) NOT NULL, 
	player_position VARCHAR(20), 
	goals_scored INT, 
	assists INT
)
;


INSERT into pl_teams
(
team_id, 
team_name, 
ranking, 
team_goals_scored, 
team_goals_conceded, 
wins, 
draws, 
losses, 
points
)
VALUES
('T1', 'Arsenal', '2', '88', '43', '26', '6', '6', '84'),
('T2', 'Aston Villa', '7', '51', '46', '18', '7', '13', '61'),
('T3', 'Brentford', '9', '58', '46', '15', '14', '9', '59'),
('T4', 'Brighton', '6', '72', '53', '18', '8', '12', '62'),
('T5', 'Bournemouth', '15', '37', '71', '11', '6', '21', '39'),
('T6', 'Chelsea', '12', '38', '47', '11', '11', '16', '44'),
('T7', 'Crystal Palace', '11', '40', '49', '11', '12', '15', '45'),
('T8', 'Everton', '17', '34', '57', '8', '12', '18', '36'),
('T9', 'Fulham', '10', '55', '53', '15', '7', '16', '52'),
('T10', 'Leeds', '19', '48', '78', '7', '10', '21', '31'),
('T11', 'Leicester City', '18', '51', '68', '9', '7', '22', '34'),
('T12', 'Liverpool', '5', '75', '47', '19', '10', '9', '67'),
('T13', 'Manchester City', '1', '94', '33', '28', '5', '5', '89'),
('T14', 'Manchester United', '3', '58', '43', '23', '6', '9', '75'),
('T15', 'Newcastle United', '4', '68', '33', '19', '14', '5', '71'),
('T16', 'Nottingham Forest', '16', '38', '68', '9', '11', '18', '38'),
('T17', 'Southampton', '20', '36', '73', '6', '7', '25', '25'),
('T18', 'Tottenham Hotspur', '8', '70', '63', '18', '6', '14', '60'),
('T19', 'West Ham', '14', '42', '55', '11', '7', '20', '40'),
('T20', 'Wolves', '13', '31', '58', '11', '8', '19', '41')

;

INSERT INTO pl_players
(
player_id, 
team_id, 
player_name, 
player_position, 
goals_scored, 
assists
)
VALUES
('1','T13', 'Erling Haaland', 'Striker', '36', '8'), 
('2','T18', 'Harry Kane', 'Striker', '30', '3'),
('3','T3', 'Ivan Toney', 'Striker', '20', '4'), 
('4','T12', 'Mohamed Salah', 'Right Winger', '19', '12'),
('5','T15', 'Callum Wilson', 'Striker', '18', '5'), 
('6','T14', 'Marcus Rashford', 'Left Winger', '17', '5'),
('7','T1', 'Gabriel Martinelli', 'Left Winger', '15', '5'), 
('8','T2', 'Ollie Watkins', 'Striker', '15', '6'),
('9','T1', 'Martin Odegaard', 'Central Midfielder', '15', '7'), 
('10','T9', 'Aleksandar Mitrovic', 'Striker', '14', '1'),
('11','T1', 'Bukayo Saka', 'Right Winger', '14', '11'), 
('12','T11', 'Harvey Barnes', 'Left Winger', '13', '1'),
('13','T10', 'Rodrigo', 'Striker', '13', '1'), 
('14','T15', 'Miguel Almiron', 'Right Winger', '11', '2'),
('15','T12', 'Roberto Firmino', 'Striker', '11', '4'), 
('16','T1', 'Gabriel Jesus', 'Striker', '11', '6'), 
('17','T13', 'Phil Foden', 'Left Winger', '11', '5'), 
('18','T16', 'Taiwo Awoniyi', 'Striker', '10', '1'),
('19','T7', 'Eberechi Eze', 'Central Midfielder', '10', '4'), 
('20','T15', 'Aleksandar Isak', 'Striker', '10', '1'),
('21','T4', 'Alexis Mac Allister', 'Central Midfielder', '10', '2'), 
('22','T11', 'James Maddison', 'Central Midfielder', '10', '9'),
('23','T18', 'Son Heung Min', 'Left Winger', '10', '6'), 
('24','T13', 'Julian Alvarez', 'Striker', '9', '0'),
('25','T4', 'Pascal Gross', 'Central Midfielder', '9', '8'), 
('26','T3', 'Bryan Mbeumo', 'Right Winger', '9', '8'),
('27','T12', 'Darwin Nunez', 'Striker', '9', '3'), 
('28','T17', 'James Ward-Prowse', 'Central Midfielder', '9', '4'),
('29','T14', 'Bruno Fernandes', 'Central Midfielder', '8', '8'), 
('30','T13', 'Ilkay Gundogan', 'Central Midfielder', '8', '4'),
('31','T19', 'Danny Ings', 'Striker', '8', '2'), 
('32','T16', 'Brennan Johnson', 'Striker', '8', '3'), 
('33','T1', 'Leandro Trossard', 'Left Winger', '8', '12'), 
('34','T5', 'Philip Billing', 'Central Midfielder', '7', '1'),
('35','T13', 'Kevin De Bruyne', 'Central Midfielder', '7', '16'), 
('36','T12', 'Cody Gakpo', 'Left Winger', '7', '2'),
('37','T6', 'Kai Havertz', 'Central Midfielder', '7', '1'), 
('38','T4', 'Solly March', 'Right Winger', '7', '7'),
('39','T8', 'Dwight McNeil', 'Left Winger', '7', '3'), 
('40','T4', 'Kaoru Mitoma', 'Left Winger', '7', '5'),
('41','T12', 'Diogo Jota', 'Striker', '7', '4'), 
('42','T3', 'Yoane Wissa', 'Striker', '7', '3'),
('43','T1', 'Granit Xhaka', 'Central Midfielder', '7', '7'), 
('44','T7', 'Wilfried Zaha', 'Left Winger', '7', '2'),
('45','T15', 'Joelinton', 'Central Midfielder', '6', '1'), 
('46','T19', 'Said Benrahma', 'Left Winger', '6', '3'),
('47','T19', 'Jarrod Bowen', 'Right Winger', '6', '5'), 
('48','T20', 'Daniel Podence', 'Left Winger', '6', '0'), 
('49','T20', 'Ruben Neves', 'Central Midfielder', '6', '1'), 
('50','T4', 'Evan Ferguson', 'Striker', '6', '2')

;
