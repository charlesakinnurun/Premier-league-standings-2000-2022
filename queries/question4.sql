SELECT season,team,goals_for
FROM premier_league_standings
WHERE (season,goals_for) IN (
    SELECT season,MAX(goals_for)
    FROM premier_league_standings
    GROUP BY season
)
ORDER BY season;