create table DuplicateDataTable
(
 Name varchar(100),
 Age int
 )

 Insert into DuplicateDataTable
 Select 'Pavan',30
 Union all
  Select 'Pavan',30
   Union all
  Select 'Aradhya',2
   Union all
  Select 'Aradhya',2
   Union all
  Select 'Ramani',30
   Union all
  Select 'Nilima',30


  select * from DuplicateDataTable 

  /* How to delete these duplicates as I dont have any identity column a simple where doesnt work out */
  /* Lets see If My Window functions come to my rescue */

  Select *,Rank() over(partition by Name,Age order by Name,Age) from DuplicateDataTable

  /* So Rank doesnt help me because, it is assigning same rank for similar items. Dense_Rank also does something similar*/

    Select *,Row_number() over(partition by Name,Age order by Name,Age) from DuplicateDataTable

	/* Yayaya  I am able to create some unique numbers to identify my duplicate entry*/

	With cte as (Select *,Row_number() over(partition by Name,Age order by Name,Age) as [row_num] from DuplicateDataTable)
	select * from cte where [row_num]=2

	/* Finally lets try to delete that */
	With cte as (Select *,Row_number() over(partition by Name,Age order by Name,Age) as [row_num] from DuplicateDataTable)
	delete from cte where [row_num]=2

	select * from DuplicateDataTable 