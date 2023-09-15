SELECT class
FROM (
    SELECT class, COUNT(class) AS cnt
    FROM Courses
    GROUP BY class
) AS C
WHERE C.cnt >= 5;
