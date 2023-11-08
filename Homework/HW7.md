## 1. (1 point) Find all employees who have a job as salesman.
~A) select all salesman from emp;~\
**B) select empno, ename from emp where job = 'salesman';** (Correct)\
~C) select Count(\*) from salesman;~\
~D) select Count(\*) from emp where job = 'salesman';~

## 2. (1 point) Find all managers who make more than 2000 dollars
~A) select ename from emp where job = 'MANAGER' or sal > 2000;~\
~B) select manager from emp where sal > 2000;~\
**C) select ename from emp where job = 'MANAGER' and sal > 2000;** (Correct)\
~D) select ename from emp where job = MANAGER and sal > 2000;~

## 3. (1 point) What can the statement "select constraint_name from user_constraints where table_name = 'ACCOUNTS'" do?
~A) find all the primary keys on Account table~\
~B) find all the foreign keys on Account table~\
~C) find all domain validation rules on Account table~\
**D) All of the above** (Correct)

## 4. (1 point) Find those employees whose name starts with letter K
~A) select * from emp where ename like '\*K\*';~\
~B) select * from emp where ename like '%K%';~\
~C) select * from emp where ename like 'K\*';~\
**D) select * from emp where ename like 'K%';** (Correct)

## 5. (1 point) Find the department located in BOSTON in the following table: DEPT(DEPTNO, DNAME, LOC)
~A) select department from DEPT where loc= BOSTON;~\
~B) select deptno from DEPT where location = 'BOSTON';~\
~C) select dname from dept where loc=BOSTON;~\
**D) select * from DEPT where loc='BOSTON';** (Correct)

## 6. (1 point) Finds all salesmen who are making less than 1500 dollars
~A) select salesman from emp where sal < 1500;~\
~B) select * from emp where sal < 1500;~\
~C) select ename from salesman where sal < 1500;~\
**D) select ename from emp where job = 'SALESMAN' and sal < 1500;** (Correct)

## 7. (1 point) Find the number of employees in each department
~A) select sum(*) from emp group by deptno;~\
**B) select count(empno) from emp group by deptno;** (Correct)\
~C) select sum(empno) from emp group by deptno;~\
~D) select count(empno) from emp group by dname;~\
~E) select count(empno) from dept, emp group by dname;~

## 8. (1 point) The second referential integrity rule states that
~A) each table must have a primary key~\
**B) the data for a foreign key column must exist in the corresponding primary key colmun** (Correct)\
~C) recursive relationship is always optional to optional~\
~D) columns with frequent changes in value should not be made a primary key~

## 9. (1 point) What type of join is needed when you wish to include rows in the left table no matter whether they have matching records in the right table or not?
~A) inner join~\
~B) outer join~\
**C) left join** (Correct)\
~D) right join~\
~E) none of the above~

## 10. (1 point) The following SQL is which type of join:
```sql
SELECT CUSTOMER_T. CUSTOMER_ID,
ORDER_T. CUSTOMER_ID, NAME, ORDER_ID
FROM CUSTOMER_T,ORDER_T
WHERE CUSTOMER_T. CUSTOMER_ID = ORDER_T. CUSTOMER_ID
```
**A) implicit inner join** (Correct)\
~B) Natural join~\
~C) Outer join~\
~D) Cartesian join~
