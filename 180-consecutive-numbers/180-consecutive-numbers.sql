/* Write your T-SQL query statement below */
SELECT DISTINCT Num as ConsecutiveNums
FROM (SELECT *,
      Prev = LEAD(Num) over(order by id),Next = LAG(Num) over(order by id) 
      FROM Logs) t
WHERE num = Prev and num = Next