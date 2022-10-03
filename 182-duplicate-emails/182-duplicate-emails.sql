/* Write your T-SQL query statement below */
SELECT distinct P.email AS Email
FROM PERSON P,PERSON N
WHERE P.ID <> N.ID AND P.email = N.email