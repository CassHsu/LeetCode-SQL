SELECT u.name, b.balance
FROM Users u, (
    SELECT t.account, SUM(t.amount) balance
    FROM Transactions t
    GROUP BY t.account
) b
WHERE u.account = b.account AND b.balance > 10000;
