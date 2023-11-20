# Nathan Riley

**Find those employees whose name has letter K inside**
```sql
SELECT ENAME
FROM EMP
WHERE ENAME LIKE '%K%';
``````
**Change ADAMS name to ADAM and his job title to MANAGER**
```sql
UPDATE EMP
SET ename = 'ADAM', job = 'MANAGER'
WHERE ename = 'ADAMS';
```
**Find all employees in DALLAS who were hired after 6/1/1980**
```sql
SELECT ENAME, HIREDATE, LOC
FROM EMP
JOIN DEPT ON (DEPT.DEPTNO = EMP.DEPTNO)
WHERE LOC = 'DALLAS' AND HIREDATE > TO_DATE('1980-06-01', 'YYYY-MM-DD');
```
**Insert a record for a new saleswoman SUSAN who was hired on February 27, 1986. Her initial salary is 1400 dollars. She has been assigned with an employee number 8045**
```sql
INSERT INTO EMP VALUES
(8045,'SUSAN','SALESMAN',NULL,to_date('27-02-1986','dd-mm-yyyy'),1400,NULL,30);
```
**Give an employee 8% salary increases if he or she is hired before 1981 and has salary less than 1200**
```sql
UPDATE EMP
SET SAL = SAL * 1.08
WHERE HIREDATE < TO_DATE('1981-01-01', 'YYYY-MM-DD') AND SALARY < 1200;
```
**Find the number of all employees who does not have any commission**
```sql
SELECT COUNT(*)
FROM EMP
WHERE COMM IS NULL OR COMM = 0;
```
**Find average salary of each job**
```sql
SELECT JO, AVG(SAL) AS AVERAGE_SALARY
FROM EMP
GROUP BY JOB;
```
**Finds the average salary of all salesmen who are making less than 1500 dollars**
```sql
SELECT AVG(SAL) AS AVERAGE_SALARY
FROM EMP
WHERE JOB = 'SALESMAN' AND SAL < 1500;
```
**For all the employees working in Dallas, list the name of each one and the number of years he has been employed by the company.**
```sql
SELECT ENAME,
    FLOOR(MONTHS_BETWEEN(TO_DATE('2023-10-30', 'YYYY-MM-DD'), HIREDATE) / 12) AS YEARS
FROM EMP
JOIN DEPT ON (DEPT.DEPTNO = EMP.DEPTNO)
WHERE LOC = 'DALLAS';
```
**Find the maximum salary of the employees at each location**
```sql
SELECT LOC, MAX(SAL)
FROM EMP
JOIN DEPT ON (DEPT.DEPTNO = EMP.DEPTNO)
GROUP BY LOC;
```
