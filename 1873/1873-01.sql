SELECT e.employee_id, 
IF (e.employee_id % 2 = 1 AND e.name NOT LIKE 'M%', e.salary, 0) AS bonus
FROM Employees AS e;
