/* Write your T-SQL query statement below */
SELECT c.name AS Customers
FROM Customers c left outer join Orders o
on c.id = o.customerId 
where o.customerId is null