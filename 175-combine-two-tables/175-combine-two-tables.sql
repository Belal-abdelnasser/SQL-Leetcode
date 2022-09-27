/* Write your T-SQL query statement below */
SELECT firstName,lastName,city,state
FROM Person p left join Address a
ON p.personId = a.personId