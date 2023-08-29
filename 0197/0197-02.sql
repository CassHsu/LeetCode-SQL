SELECT W1.id
FROM Weather AS W1, Weather AS W2
WHERE W1.temperature > W2.temperature AND TO_DAYS(W1.recordDate) - TO_DAYS(W2.recordDate) = 1;
