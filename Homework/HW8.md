# (1 point) Which is the correct statement to find the number of employees in each department using table EMP?
~A) select deptno, count(empno) from emp, dept where emp.deptno=dept.deptno group by dname;~
**B) select deptno, count(empno) from emp group by deptno;**
~C) select deptno, count(empno) from emp, dept group by deptno;~
~D) select deptno, count(empno) from emp group by dept;~

# (1 point) Find the location that has average salary more than 4000 dollars. Usually each location may
have several departments.
**A) select loc from dept, emp where dept.deptno = emp.deptno group by loc having avg(sal) > 4000;**
~B) select loc from emp group by loc having avg(sal) > 4000;~
~C) select loc from dept group by loc having avg(sal) > 4000;~
~D) select loc from dept where deptno in (select deptno from emp group by loc having avg(sal) > 4000);~
~E) select loc from dept where deptno in (select deptno from emp group by deptno having avg(sal) > 4000);~

# (1 point) Find the range of salaries (min, max) of each department in the following table:
## EMP(EID, ENAME, SAL, DEPT)
~A) select min(sal), max(sal) from emp group by deptno;~
**B) select min(sal), max(sal) from emp group by dept;**
~C) select min(sal) as min, max(sal) as max from employees group by dept~
~D) select range(sal) from emp group by dept;~

# (1 point) Find those departments whose minimum salary is more than 2000
~A) select dname, min(sal) from dept, emp group by deptno having min(sal) > 2000;~
~B) select dname, min(sal) from emp group by deptno having min(sal) > 2000;~
~C) select deptno from emp group by deptno where min(sal) < 2000;~
**D) select deptno, min(sal) from emp group by deptno having min(sal) > 2000;**

# (1 point) Find the total number of employees hired in January of all years
**A) select count(\*) from emp where to_char(hiredate, 'Month') = 'January';**
~B) select count(\*) from emp group by deptno having to_char(hiredate, 'Month') = 'January';~
~C) select count(\*) from emp gro:up by month having to_char(hiredate, 'Month') = 'January';~
~D) select sum(empno) from emp where to_char(hiredate, 'Month') = 'January';~

# (1 point) The SQL keyword BETWEEN is used:
**A) for ranges.**
~B) to limit the columns displayed.~
~C) as a wildcard.~
~D) None of the above is correct.~

# (1 point) A subquery in an SQL SELECT statement:
~A) can only be used with two tables.~
~B) can always be duplicated by a join.~
**C) has a distinct form that cannot be duplicated by a join.**
~D) cannot have its results sorted using ORDER BY.~

# (1 point) Using the SQL GROUP BY phrase with a SELECT statement can help detect which of the
following problems?
~A) The multivalue, multicolumn problem~
**B) The inconsistent values problem**
~C) The missing values problem~
~D) The general-purpose remarks column problem~

# (1 point) Based on the following table, which is the correct SQL statement to find the employees who work in the same department as SMITH?
~A) select ename from emp where job = (select ename from emp where ename = 'SMITH');~
**B) select ename from emp where deptno = (select deptno from emp where ename = 'SMITH');**
~C) select ename from emp where dname = (select dname from emp where ename = 'SMITH');~
~D) select ename from emp where deptno = (select * from emp where ename = 'SMITH');~

# (1 point) Based on the following table, which is the correct SQL statement to find the employees who was hired in the same year as TURNER?
~A) select ename from emp where hiredate = (select hiredate from emp where ename = 'TURNER');~
~B) select ename from emp where hiredate in (select * from emp where ename = 'TURNER');~
**C) select ename from emp where to_char(hiredate,'YYYY') in (select to_char(hiredate, 'YYYY') from emp where ename = 'TURNER');**
~D) select ename from emp where * = (select * from emp where ename = 'TURNER')~
