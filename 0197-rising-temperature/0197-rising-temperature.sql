/* Write your T-SQL query statement below */
SELECT w1.id 
FROM weather w1
LEFT JOIN weather w2 
ON w1.recordDate = dateadd(day, 1, w2.recordDate)
WHERE w1.temperature > w2.temperature
/*SELECT id
FROM (
    SELECT * ,PREV = LAG(temperature) over(order by recordDate)
    FROM Weather
) w
WHERE temperature > PREV*/