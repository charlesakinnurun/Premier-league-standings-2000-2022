SELECT AVG(won) AS avg_wins_top4
FROM premier_league_standings
WHERE position IN (1,2,3,4);