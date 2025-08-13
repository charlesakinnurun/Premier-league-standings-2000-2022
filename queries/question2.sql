SELECT season,AVG(points) AS avg_points
FROM premier_league_standings
GROUP BY season
ORDER BY season;