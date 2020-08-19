select * from Employees

select avg(salary),sum(salary),Min(Salary),Max(Salary) from Employees 


select *,avg(salary) from Employees


-----------------------------------------------------------------
with cte as (select avg(salary) as avgerage from Employees)
select * from employees e  cross join cte

------------------------------------------------------------------

Select *,avg(salary) Over(Partition by <colname> order by <colname> RANGE BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW)
from employees

-------------------------------------------------------------------------------------------------------------------------
Select *,avg(salary) Over(order by salary RANGE BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW) as avg_sal from employees
Select *,avg(salary) Over(order by salary ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW) as avg_sal from employees

Select *,avg(salary) Over(order by salary RANGE BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING) as avg_sal from employees
Select *,avg(salary) Over(order by salary ROWS BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING) as avg_sal from employees

Select *,avg(salary) Over(order by salary RANGE BETWEEN 1 PRECEDING AND 1 FOLLOWING) as avg_sal from employees
Select *,avg(salary) Over(order by salary ROWS BETWEEN 1 PRECEDING AND 2 FOLLOWING) as avg_sal from employees

--------------------------------------------------------------------------------------------------------------------------


Select *,avg(salary) Over() as avg_sal from employees

Select *,
ROW_NUMBER() Over(order by salary) as [count]
from employees


Select *,count(salary) Over(order by salary ROWS BETWEEN 1 PRECEDING AND 1 FOLLOWING) as [sum]
from employees

Select *,
count(*) Over(order by salary Range BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW) as [count]
from employees

Select *,
count(*) Over(order by id Range BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW) as [count]
from employees

Select *,avg(salary) Over(order by salary) as avg_sal,
count(*) Over(order by id RANGE BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW) as [count]
from employees



Select *,avg(salary) Over(order by salary RANGE BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING) as avg_sal,
count(*) Over(order by salary RANGE BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING) as avg_sal
from employees


Select *,avg(salary) Over(order by salary ROWS BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING) as avg_sal from employees