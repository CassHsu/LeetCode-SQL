SELECT id,
    sum(CASE WHEN month = 'jan' THEN revenue ELSE null END) as Jan_Revenue,
    sum(CASE WHEN month = 'feb' THEN revenue ELSE null END) as Feb_Revenue,
    sum(CASE WHEN month = 'mar' THEN revenue ELSE null END) as Mar_Revenue,
    sum(CASE WHEN month = 'apr' THEN revenue ELSE null END) as Apr_Revenue,
    sum(CASE WHEN month = 'may' THEN revenue ELSE null END) as May_Revenue,
    sum(CASE WHEN month = 'jun' THEN revenue ELSE null END) as Jun_Revenue,
    sum(CASE WHEN month = 'jul' THEN revenue ELSE null END) as Jul_Revenue,
    sum(CASE WHEN month = 'aug' THEN revenue ELSE null END) as Aug_Revenue,
    sum(CASE WHEN month = 'sep' THEN revenue ELSE null END) as Sep_Revenue,
    sum(CASE WHEN month = 'oct' THEN revenue ELSE null END) as Oct_Revenue,
    sum(CASE WHEN month = 'nov' THEN revenue ELSE null END) as Nov_Revenue,
    sum(CASE WHEN month = 'dec' THEN revenue ELSE null END) as Dec_Revenue
FROM department
GROUP BY id;
