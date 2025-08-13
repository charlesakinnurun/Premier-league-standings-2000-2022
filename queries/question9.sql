SELECT qualification_or_relegation,COUNT(*) AS freq
FROM premier_league_standings
WHERE position IN (1,2,3,4)
GROUP BY qualification_or_relegation
ORDER BY freq DESC
LIMIT 1;