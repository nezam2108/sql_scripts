Select d.name as Department,
       e1.name as Employee,
       e1.salary as Salary
from Employee e1
join Department d
on e1.departmentId = d.id
where 3> (
    select COUNT(distinct (e2.salary)) from Employee e2
    where e2.Salary > e1.Salary and e1.DepartmentId = e2.DepartmentId
)