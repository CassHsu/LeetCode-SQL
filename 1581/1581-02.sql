SELECT V.customer_id, COUNT(V.customer_id) AS count_no_trans
FROM Visits AS V LEFT JOIN Transactions AS T ON V.visit_id = T.visit_id
WHERE Transaction_id is NULL
GROUP BY customer_id;
