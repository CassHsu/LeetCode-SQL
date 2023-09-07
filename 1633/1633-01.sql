SELECT R.contest_id, ROUND(COUNT(DISTINCT R.user_id) * 100 / (SELECT COUNT(user_id) FROM Users), 2) AS percentage
FROM Register R
GROUP BY R.contest_id
ORDER BY percentage DESC, R.contest_id ASC;
