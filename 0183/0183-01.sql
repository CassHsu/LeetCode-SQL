SELECT c.name Customers
FROM Customers AS C
WHERE c.id NOT IN (
    SELECT o.customerId
    FROM Orders AS o);
