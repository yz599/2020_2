## Creat new column - group

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