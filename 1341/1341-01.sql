(SELECT b.name as 'results'
FROM MovieRating a LEFT JOIN Users b on a.user_id = b.user_id
GROUP BY b.name
ORDER BY count(distinct a.movie_id) DESC, name
LIMIT 1)
UNION ALL
(SELECT q.title as 'results'
FROM (SELECT movie_id, user_id, rating, substring(created_at,1,7) as 'month'
FROM MovieRating) p left join Movies q on p.movie_id = q.movie_id
WHERE p.month = '2020-02'
GROUP BY p.movie_id
order by avg(p.rating) DESC, q.title
limit 1)
