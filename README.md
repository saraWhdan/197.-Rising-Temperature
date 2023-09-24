# 197.-Rising-Temperature
Problem Link:
https://leetcode.com/problems/rising-temperature/submissions/1013363214/?envType=study-plan-v2&envId=top-sql-50
## Solution

```sql
SELECT DISTINCT w1.id Id
FROM Weather w1
INNER JOIN Weather w2
ON DATEADD(DAY,1,w2.recordDate)=w1.recordDate
WHERE  w1.temperature > w2.temperature
