SELECT product_id, year AS first_year, S.quantity, S.price
FROM Sales S
WHERE (product_id, year) IN (
  SELECT product_id, min(year) AS year
  FROM Sales
  GROUP BY product_id
);
