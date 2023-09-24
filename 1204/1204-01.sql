SELECT person_name
FROM Queue
WHERE turn = (
    SELECT MAX(turn) AS turn
    FROM (
        SELECT q1.turn
        FROM Queue q1 JOIN Queue q2
        ON q1.turn >= q2.turn
        GROUP BY q1.turn
        HAVING SUM(q2.weight) <= 1000
    ) AS T
);
