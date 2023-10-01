WITH 
Q1 AS (
    SELECT pid
    FROM insurance
    GROUP BY tiv_2015
    HAVING count(*)=1
),
Q2 AS (
    SELECT pid, concat(lat, lon) loc
    FROM insurance
    GROUP BY loc
    HAVING count(*)=1
)

SELECT ROUND(SUM(tiv_2016),2) AS tiv_2016
FROM insurance
WHERE pid NOT IN (SELECT * FROM Q1) AND pid IN (SELECT pid FROM Q2);
