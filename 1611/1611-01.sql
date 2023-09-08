SELECT
query_name,
ROUND(AVG(cast(rating as decimal) / position), 2) as quality,
ROUND(SUM(case when rating < 3 then 1 else 0 end) * 100 / COUNT(*), 2) as poor_query_percentage
FROM queries
GROUP BY query_name;
