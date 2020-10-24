## Join
![](.SQL_5_Join_images/e110ac79.png)

[Database](https://app.dataquest.io/m/179/joining-data-in-sql/1/introducing-joins)
![](.SQL_5_Join_images/4f21857d.png)

#### Questions 
1. Alias
2. WHERE
3. subquery

![](.SQL_5_Join_images/91b778f1.png)  

![](.SQL_5_Join_images/7338242d.png)
![](.SQL_5_Join_images/d04f0dac.png)
---

![](.SQL_5_Join_images/410f91a7.png)
WHERE
-------
![](.SQL_5_Join_images/380c0ee2.png)
![](.SQL_5_Join_images/9a1e583b.png)
> The important thing to remember is that the result of any subquery is 
>always calculated first, so we read from the inside out.
>- The subquery, in the red box, is calculated first. This simple query selects all columns from cities, filtering rows that are marked as capital cities by having a value for capital of 1.
>- The INNER JOIN joins the subquery result, aliased as c, to the facts table based on the ON clause.
>- Two columns are selected from the results of the join: - f.name, aliased as country - c.name, aliased as capital_city
### Inner join
![](.SQL_5_Join_images/4447c5ce.png)
![](.SQL_5_Join_images/b6698a72.png)
![](.SQL_5_Join_images/3c02d6b6.png)

The inner join clause is made up of two parts:

- **INNER JOIN**, which tells the SQL engine the name of the table you wish to join in your query, 
and that you wish to use an inner join. --<font color='red'>**Creat a table**
- **ON**, which tells the SQL engine what columns to use to join the two tables.  


#### Left join
![](.SQL_5_Join_images/fdcd624b.png)
![](.SQL_5_Join_images/458dcc21.png)  
A left join includes all the rows that an inner join will select, 
plus any rows from the first (or left) table that don't have a match in the second table.  

![](.SQL_5_Join_images/6500b5b6.png)  

**Order by/group by**  
![](.SQL_5_Join_images/3a6b8367.png)
----
#### Right join   
The main reason a right join would be used is when you are joining more than two tables. 
In these cases, using a right join is preferable because it can avoid restructuring your whole query to join one table. 
Outside of this, right joins are used reasonably rarely, 
so for simple joins it's better to use a left join than a right as it will be easier for your query to be read and understood by others.

![](.SQL_5_Join_images/80e671f9.png)
![](.SQL_5_Join_images/9ca1c90e.png)
#### Subquery
![](.SQL_5_Join_images/97dde377.png)