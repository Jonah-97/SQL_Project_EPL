
------------------------ Order the team by ranking of the 22/23 season -------------------------------------------

SELECT team_name, ranking
FROM pl_teams
ORDER BY ranking ASC
;

------------------------ Calculate the goal difference of each team as a separate column -------------------------- 

SELECT team_name, ranking, points, team_goals_scored - team_goals_conceded AS goal_difference
FROM pl_teams
ORDER BY goal_difference DESC
;
---------------- Which teams had a positive goal difference (above 0) while finishing in the top 10 ----------------

SELECT team_name, ranking, points, team_goals_scored - team_goals_conceded AS 'goal_difference'
FROM pl_teams
WHERE 'goal_difference' > '0' AND ranking <= '10'
ORDER BY goal_difference DESC
;

------------ We can deduce from the query above that Manchester United had the 6th best Goal Difference despite being ranked 3rd amongst teams for points -----------

------------ What were the top 5 scorers in the league and what team do they play for? ----------------------------------------

SELECT team_name, player_name, goals_scored
FROM pl_teams pt
JOIN pl_players pp
	ON pt.team_id = pp.team_id
ORDER BY goals_scored DESC
LIMIT 5
;

------------ Implementing a category system for players who have scored a certain amount of goals (e.g 30+ goals = 'Elite Level', 20+ goals = 'Gold Level', 10+ Goals = 'Silver Level' and 0+ Goals = Bronze Level) -----------------

SELECT player_name, goals_scored,
	CASE
		WHEN goals_scored >= '30' THEN 'Elite'
        WHEN goals_scored >= '20' THEN 'Gold'
        WHEN goals_scored >= '10' THEN 'Silver'
        ELSE 'Bronze'
    END AS 'Player Level'
FROM pl_players
ORDER BY goals_scored DESC
;

------------------------------ How to find the number of goals that a player contributed towards the number of goals their respective team scored across the season expressed as a percentage ----------------------

SELECT pp.player_name, 
	pt.team_name, 
    pp.goals_scored,
    pt.team_goals_scored, 
    (pp.goals_scored/pt.team_goals_scored) * 100 AS Goal_Percentage
FROM pl_players pp
JOIN pl_teams pt
ON pp.team_id = pt.team_id
ORDER BY Goal_Percentage DESC
;

------- From the above query, we can deduce that even though Harry Kane (42.9%) was not the top scorer in the league, he contributed a higher percentage of goals to his team than Erling Haaland (38.3%) who was the top scorer ------------------

------- How to find the number of goal and assist contributions that individual players had towards their total team goals expressed as a percentage -------------

SELECT pp.player_name, 
	pt.team_name, 
    pp.goals_scored,
    pt.team_goals_scored, 
    pp.goals_scored + pp.assists AS goal_contributions,
    (pp.goals_scored + pp.assists) / pt.team_goals_scored * 100 AS goal_contribution_percentage
FROM pl_players pp
JOIN pl_teams pt
ON pp.team_id = pt.team_id
ORDER BY goal_contribution_percentage DESC
;

---------- From the query above, we can deduce that Harry Kane was either scored or assisted 47.1% of Tottenham Hotspur goals in the season -------------------