SELECT MAX(N.num) AS num
FROM (
  SELECT num, count(num) AS cnt FROM MyNumbers GROUP BY num
) AS N
WHERE N.cnt = 1;
