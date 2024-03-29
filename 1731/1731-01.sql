SELECT 
  E2.employee_id,
  E2.name,
  COUNT(*) AS reports_count,
  ROUND(AVG(E1.age)) AS average_age
FROM Employees E1 JOIN Employees E2 ON E1.reports_to = E2.employee_id
GROUP BY E1.reports_to
ORDER BY E2.employee_id;
