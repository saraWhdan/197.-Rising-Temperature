SELECT DISTINCT w1.id Id
FROM Weather w1
INNER JOIN Weather w2
ON DATEADD(DAY,1,w2.recordDate)=w1.recordDate
WHERE  w1.temperature > w2.temperature
