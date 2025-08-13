SELECT team,COUNT(*) AS relegations
FROM premier_league_standings
WHERE qualification_or_relegation LIKE '%Relegation%'
GROUP BY team
ORDER BY relegations DESC;