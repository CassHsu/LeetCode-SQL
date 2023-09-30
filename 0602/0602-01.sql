SELECT id, sum(cnt) num FROM
(
    SELECT requester_id id, count(*) cnt FROM RequestAccepted GROUP BY requester_id
    UNION ALL
    SELECT accepter_id id, count(*) cnt FROM RequestAccepted GROUP BY accepter_id
) AS T1
GROUP BY id
ORDER BY num DESC
LIMIT 1;
