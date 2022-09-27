/* Write your T-SQL query statement below */
/*SELECT DISTINCT salary as SecondHighestSalary
FROM (SELECT *,dense_rank() over(order by salary desc) as DR 
      FROM Employee) as Tab
WHERE Tab.DR = 2*/
-------------------
SELECT MAX(Salary) AS SecondHighestSalary
FROM Employee
WHERE Salary < (SELECT MAX(Salary) FROM Employee)