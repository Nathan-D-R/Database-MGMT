## Delete the employee who has the longest employment in the company
```sql
DELETE
FROM EMP
WHERE HIREDATE = (
    SELECT MIN(HIREDATE)
    FROM EMP
);
```

## Find the total amount of money needed in order to give 5% salary increase to all mangers and 4% increase to everybody else

```sql
SELECT SUM(
    CASE
        WHEN JOB = 'MANAGER' THEN SAL*0.05
        ELSE SAL*0.04
    END
) AS AMT
FROM EMP;
```

## Give each clerk a salary increase, which is 3% of all clerks’ average salary to each clerk
```sql
UPDATE EMP
SET SAL=(
SELECT AVG(SAL) FROM EMP WHERE JOB='CLERK')*1.03
WHERE JOB = CLERK;
```

## Find employees who are making less than the average of the employees hired in the same year

```sql
SELECT *
FROM EMP e
WHERE SAL < (
    SELECT AVG(SAL)
    FROM EMP
    WHERE TO_CHAR(HIREDATE, 'YYYY') = TO_CHAR(e.HIREDATE, 'YYYY')
);
```

## Give 3% salary increase to those employees who have the smallest salary in their respective departments```sql

```sql
UPDATE EMP e
SET SAL = SAL * 1.03
WHERE (JOB, SAL) IN (
    SELECT JOB, SAL
    FROM (
        SELECT JOB, SAL, RANK() OVER (PARTITION BY DEPTNO ORDER BY SAL) AS salary_rank
        FROM EMP
    )
    WHERE salary_rank = 1
);
```

## Find the requests that has a word that sounds like uniqs and another word which is (mis)spelled as wendow

```sql
SELECT ID, TEXT, score(1)
FROM REQUESTS
WHERE CONTAINS(TEXT, '!uniqs', 1) > 0
AND UTL_MATCH.EDIT_DISTANCE_SIMILARITY(TEXT, 'wendow') > 0.75;
```

## Give 100 dollars commission to a random employee

```sql
UPDATE EMP
SET COMM = NVL(COMM, 0) + 100
WHERE EMPNO IN (
    SELECT EMPNO
    FROM EMP
    ORDER BY DBMS_RANDOM.VALUE()
    WHERE ROWNUM < 2);
```

## Find the rank of each department in terms of total salary

```sql
SELECT DEPTNO, SUM(SAL)
FROM EMP
GROUP BY DEPTNO
ORDER BY SUM(SAL) DESC;

-- Both will return the same thing

SELECT DEPTNO, SUM(SAL), RANK() OVER (ORDER BY SUM(SAL) DESC) AS dept_salary_rank
FROM EMP
GROUP BY DEPTNO;

```

## Find all managers and, for each manager, a list all the employees that manager supervises.

```sql
SELECT MGR.EMPNO AS MANAGER_ID, MGR.ENAME AS MANAGER_NAME, EMP.EMPNO, EMP.ENAME
FROM EMP MGR
LEFT JOIN EMP ON MGR.EMPNO = EMP.MGR
ORDER BY MGR.EMPNO, EMP.EMPNO;
```

## Find top 2 largest departments in terms of number of employees

```sql
SELECT * FROM(
    SELECT DEPTNO, COUNT(*) AS num_employees
    FROM EMP
    GROUP BY DEPTNO
    ORDER BY num_employees DESC
)
WHERE ROWNUM <3;

-- This also works
SELECT DEPTNO, COUNT(*) AS num_employees
FROM EMP
GROUP BY DEPTNO
ORDER BY num_employees DESC
FETCH FIRST 2 ROWS ONLY;
```
