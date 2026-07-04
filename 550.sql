SELECT ROUND(
    COUNT(DISTINCT player_id) * 1.0 /
    (SELECT COUNT(DISTINCT player_id) FROM Activity),
    2
) AS fraction
FROM Activity a
WHERE event_date = (
    SELECT MIN(event_date) + 1
    FROM Activity
    WHERE player_id = a.player_id
);