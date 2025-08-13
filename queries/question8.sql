SELECT season,SUM(goals_for) AS total_goals
FROM premier_league_standings
GROUP BY season
ORDER BY season;