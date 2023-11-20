
### 1. Delete those employees whose name starts with A and who is under the supervision of BLAKE

```sql
DELETE FROM EMP
WHERE ENAME LIKE 'A%' AND MGR = (SELECT EMPNO FROM EMP WHERE ENAME = 'BLAKE');
```

### 2. Find the minimum salary of each department among the people who was hired before 1980?

```sql
SELECT DEPTNO, MIN(SAL)
FROM EMP
WHERE TO_CHAR(HIREDATE, 'YYYY') < 1980
GROUP BY DEPTNO;
```

### 3. Find the employee in each job who makes the smallest salary in their job titles

```sql
SELECT EMP.*
FROM EMP
WHERE (JOB, SAL) IN (
    SELECT JOB, MIN(SAL)
    FROM EMP
    GROUP BY JOB
);
```

### 4. Find employees who make less than their departmental maximum

```sql
SELECT E.*
FROM EMP E
JOIN (
    SELECT DEPTNO, MAX(SAL) AS MAX_SAL
    FROM EMP
    GROUP BY DEPTNO
) D ON E.DEPTNO = D.DEPTNO
WHERE E.SAL < D.MAX_SAL;
```

### 5. Find those with manager job title but have no supervisees

```sql
SELECT *
FROM EMP
WHERE JOB = 'MANAGER'
AND EMPNO NOT IN (SELECT DISTINCT MGR FROM EMP);
```

### 6. Find the total amount of money needed in order to give 5% salary increase to all mangers and 4% increase to everybody else

```sql
SELECT SUM(
    CASE
        WHEN JOB = 'MANAGER' THEN SAL * 1.05
        ELSE SAL * 1.04
    END
) AS AMOUNT
FROM EMP;
```

### 7. Find each employee who is making more than the average of his or her job line

```sql
SELECT E.*
FROM EMP E
JOIN (
    SELECT JOB, AVG(SAL) AS AVG_SAL
    FROM EMP
    GROUP BY JOB
) J ON E.JOB = J.JOB
WHERE E.SAL > J.AVG_SAL;
```

### 8. Give 500 commission to the employee who has the longest employment in the company

```sql
UPDATE EMP
SET COMM = 500
WHERE HIREDATE = (SELECT MAX(HIREDATE) FROM EMP);
```

### 9. Give everybody 10% salary increase in the departments whose maximum salaries are less than 2000

```sql
UPDATE EMP
SET SAL = SAL * 1.1
WHERE DEPTNO IN (
    SELECT DEPTNO
    FROM EMP
    GROUP BY DEPTNO
    HAVING MAX(SAL) < 2000
);
```

### 10. For all the employees supervised by KING, give them a salary increase, which is equal to the 2% of the company’s average salary

```sql
UPDATE EMP
SET SAL = SAL + ((SELECT AVG(SAL) FROM EMP)*0.02)
WHERE MGR = (SELECT EMPNO FROM EMP WHERE ENAME = 'KING');
```
