SELECT u.name, IFNULL(SUM(r.distance),0) travelled_distance
FROM users u
LEFT JOIN rides r
ON u.id = r.user_id
GROUP BY u.name 
ORDER BY travelled_distance DESC, u.name;
