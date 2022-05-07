SELECT v.customer_id, COUNT(v.customer_id) AS count_no_trans
FROM Visits AS v
WHERE v.visit_id NOT IN (SELECT t.visit_id FROM Transactions AS t)
GROUP BY  v.customer_id;
