CREATE FUNCTION getNthHighestSalary(N INT) RETURNS INT
select salary as getNthHighestSalary from Employee where N-1 = (
    select distinct (salary) from Employee e2 where e2.salary > e1.salary
)