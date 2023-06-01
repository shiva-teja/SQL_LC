# Write your MySQL query statement below

SELECT ROUND(COUNT(DISTINCT b.player_id)/COUNT(DISTINCT a.player_id),2) AS fraction
FROM 
(SELECT player_id, MIN(event_date) as event_date FROM Activity GROUP BY player_id) a LEFT JOIN Activity b 
ON a.player_id = b.player_id
AND a.event_date+1 = b.event_date;