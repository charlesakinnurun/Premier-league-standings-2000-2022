SELECT season,team,points
FROM premier_league_standings
WHERE position != 1
ORDER BY points DESC
LIMIT 1;