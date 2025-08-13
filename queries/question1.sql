SELECT team,COUNT(*) AS titles_won
FROM premier_league_standings
WHERE position = 1
GROUP BY team
ORDER BY titles_won DESC
LIMIT 1;