SELECT season,sum(goals_for) AS total_goals
FROM premier_league_standings
GROUP BY season
ORDER BY total_goals DESC
LIMIT 1;