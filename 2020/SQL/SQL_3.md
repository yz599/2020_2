## Creat new column - group
[Reference](https://app.dataquest.io/m/254/group-summary-statistics/1/introduction)
  
  ![](.SQL_3_images/76d1aa7d.png)
![](.SQL_3_images/1f45ad56.png)

### Question
1. Create new column based on other columns - CASE
2. The total number of people employed in each major category 


#### CASE - continous to discrete
![](.SQL_3_images/30229bb4.png)
![](.SQL_3_images/2d0fb25b.png)

- It starts with **CASE** to indicate that we'll be creating values by cases.
- It ends with **END** to indicate where the CASE clause terminates.
- Each explicit case is signaled by the reserved word WHEN.
- The value for each case is given after the reserved word **THEN**
- There is a fallback value given by the reserved word **ELSE**.  

The ELSE line is optional without it, rows that don't match any WHEN will be set with a missing value (NULL).

#### Group by
![](.SQL_3_images/24e430d9.png)  
 - The **GROUP BY** statement splits the Major_category column into groups 
 (with one group for each unique major category), then calculates the sum for each group.  
 - For each group, the GROUP BY statement queries each column, 
 and runs all of the aggregation functions we include in the query after the SELECT statement:  
 
![](.SQL_3_images/91ffef0a.png)

---
![](.SQL_3_images/80d743ef.png)

**by multi columns**
![](.SQL_3_images/de59433c.png)

#### HAVING
![](.SQL_3_images/8880b372.png)
#### ROUND/CASTING
![](.SQL_3_images/a2894e6b.png)  

If we try to **divide two integer **columns (Women and Total, for instance), 
SQLite (and most other SQL dialects) will round down and return integer values:

>To get float value, we can use the CAST() function to the transform the columns into Float type:
>
>![](.SQL_3_images/a4a710a9.png)