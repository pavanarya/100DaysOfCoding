

Select * from Employees order by Gender,salary desc


Select *,Rank() Over(order by salary) as [Rank] from employees 
Select *,Dense_Rank() Over(order by salary) as [Rank] from employees 
Select *,Row_Number() Over(order by salary) as [Rank] from employees 



Select *,Rank() Over(Partition by Gender order by salary) as [Rank] from employees 
Select *,Dense_Rank() Over(Partition by Gender order by salary) as [Rank] from employees 
Select *,Row_Number() Over(Partition by Gender order by salary) as [Rank] from employees 


Select *,Rank() Over(Partition by Gender order by salary desc) as [Rank] from employees ;

with CTE as(
Select *,Rank() Over(Partition by Gender order by salary desc) as [Rank] from employees )

select * from CTE where [Rank]=5


Select *,Rank() Over(Partition by Gender order by salary desc) as [Rank] from employees ;


Select *,NTILE(salary) Over(Partition by Gender order by salary desc) as [Rank] from employees ;

with CTE as(
Select *,Rank() Over(Partition by Gender order by salary desc) as [Rank] from employees )

select * from CTE where [Rank]=5


https://www.youtube.com/watch?v=CcvGAov-iYU
