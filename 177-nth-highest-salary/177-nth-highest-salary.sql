CREATE FUNCTION getNthHighestSalary(@N INT) RETURNS INT AS
BEGIN
    RETURN (
        /* Write your T-SQL query statement below. */
        select distinct tab.salary as getNthHighestSalary
        from (select *, Dense_rank()over (order by salary desc)as DR from Employee) as tab
        where tab.DR = @N
        
    );
END