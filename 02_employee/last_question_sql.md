The last question (find the top two salaries per group) is one of the harder types of common questions you will see in interviews. Here are two different approaches:

## Using a window function:
```sql
SELECT name, deptid, salary, rank FROM (
  SELECT *, RANK() OVER (PARTITION BY deptid ORDER BY salary DESC) AS rank FROM employee
  ) tmp 
  WHERE rank <= 2 ORDER BY deptid, rank;
```

## Using a WHERE clause:

```sql
SELECT * FROM employee a 
  WHERE (
    -- a subquery that counts how many employees make more than the given employee, when they are both in same department
    SELECT COUNT(*) from employee b where b.deptid = a.deptid and b.salary >= a.salary
  ) <=2 -- only accept if there at most two employees that have a salary this high in this department 
  ORDER by deptid, salary desc;
```
