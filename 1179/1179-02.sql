SELECT id,
    sum(IF (month = 'jan', revenue, null)) as Jan_Revenue,
    sum(IF (month = 'feb', revenue, null)) as Feb_Revenue,
    sum(IF (month = 'mar', revenue, null)) as Mar_Revenue,
    sum(IF (month = 'apr', revenue, null)) as Apr_Revenue,
    sum(IF (month = 'may', revenue, null)) as May_Revenue,
    sum(IF (month = 'jun', revenue, null)) as Jun_Revenue,
    sum(IF (month = 'jul', revenue, null)) as Jul_Revenue,
    sum(IF (month = 'aug', revenue, null)) as Aug_Revenue,
    sum(IF (month = 'sep', revenue, null)) as Sep_Revenue,
    sum(IF (month = 'oct', revenue, null)) as Oct_Revenue,
    sum(IF (month = 'nov', revenue, null)) as Nov_Revenue,
    sum(IF (month = 'dec', revenue, null)) as Dec_Revenue
FROM department
GROUP BY id;
