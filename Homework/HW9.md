## 1. (1 point) (check all that apply) Find all salesman who makes more than that all managers make
~A) select salesman from emp where sal > all (select max(sal) from emp where job = 'MANAGER');~\
~B) select ename from emp where sal > all (select sal from emp where mgr = empno);~\
**C) select ename from emp where job = 'SALESMAN' and sal > (select max(sal) from emp where job = 'MANAGER');**\
**D) select ename from emp where job = 'SALESMAN' and sal > all (select sal from emp where job = 'MANAGER');**\
~E) none of the above~

## 2. (1 point) Find the department that has no employees
~A) (select deptno from dept) intersect (select deptno from emp);~\
~B) select deptno from emp where deptno <= all (select deptno from dept);~\
~C) select deptno from emp group by deptno having count(\*) <= all (select count(*) from emp group by
deptno);~\
**D) None of the above**

## 3. (1 point) (check all that apply) Delete the employee who has the longest employment in the company
~A) delete from emp where (hiredate, deptno) in (select max(hiredate), deptno from emp group by deptno);~\
~B) delete from emp where hiredate in (select max(hiredate) from emp;~\
**C) delete from emp where hiredate in (select min(hiredate) from emp);**\
~D) delete from emp s where s.hiredate in (select min(t.hiredate) from emp t where t.deptno = s.deptno);~\
**E) delete from emp s where s.hiredate = (select min(t.hiredate) from emp t);**

## 4. (1 point) For all the employees supervised by KING, give them a salary increase, which is equal to the 2% of the company's average salary
Code A:
```sql
update emp
set sal = Sal +
(select 0.02 \* avg(sal) from emp)
where mgr in
(select empno from emp where ename = 'KING');
```

Code B:
```sql
update emp
set sal =
(select avg(1.02\*sal) from emp)
where mgr in
(select empno from emp);
```

Code C:
```sql
update emp a, emp b
set a.sal =
(select avg(1.02\*a.sal) from emp)
where a.mgr in
(select empno from emp b where b.ename = 'KING');
```
~A) A, B, and C~\
~B) A and B~\
~C) B and C~\
~D) A and C~\
**E) A only**

## 5. (1 point) Function decode(comm, null, 0, comm) is the same as
**A) NVL(comm, 0)**\
~B) decode(comm, comm, comm, 0)~\
~C) update emp set comm = 0 where comm is null;~\
~D) update comm = 0 when comm is null~

## 6. (1 point) Find department that has at least two employees and also in those departments, one or more employees' have names containing letter J.
**A) (select deptno from emp where ename like '%J%') intersect (select deptno from emp group by deptno having count(\*) >= 2);**\
~B) select deptno from emp where ename like '%J%' group by deptno having count(\*) >=2;~\
~C) select deptno from dept where deptno in (select deptno from emp where ename like '%J%');~\
~D) select deptno from dept where deptno in (select deptno from emp where ename like '%J%') group by deptno having count(\*) >= 2;~

## 7. (1 point) (select all that apply) Find jobs whose minimum salary is less than 2000 and maximum salary is over 4000
~A) (select job from emp group by job having min(sal) < 2000) union (select job from emp group by job having max(sal) > 4000);~\
**B) select job from emp group by job having min(sal) < 2000 and max(sal) > 4000;**
~C) (select job from emp group by job having min(sal) < 2000) minus (select job from emp group by job having max(sal) > 4000);~\
**D) (select job from emp group by job having min(sal) < 2000) intersect (select job from emp group by job having max(sal) > 4000);**\
~E) select job from emp group by job having min(sal) < 2000 and having max(sal) > 4000;~

## 8. (1 point) What is wrong with the following to find the total salary?
```sql
select sum(sal) from (
(select sal from emp where comm is null)
union
(select sal from emp where comm is not null)
)
```
~A) there is no need to use union~\
~B) after from must be a table, not a subquery~\
**C) the union will remove duplicate salaries**\
~D) nothing wrong~

## 9. (1 point) (select all that apply) Find the department located in Dallas and also have over two employees.
**A) select dname from dept, emp where dept.deptno = emp.deptno and loc='DALLAS' group by dname having count(\*) > 2;**\
~B) select dname from dept, emp where dept.deptno = emp.deptno and loc='DALLAS' group by deptno having count(\*) > 2;~\
**C) (select deptno from emp group by deptno having count(\*) > 2) intersect (select deptno from dept where loc='DALLAS');**\
~D) (select \* from emp group by deptno having count(*) > 2) intersect (select * from dept where loc='DALLAS');~

## 10. (1 point) Based on the following tables, what is the correct statement to find employees who makes less than the average in there corresponding job titles?
~A) select ename from emp where (job, sal) < (select job, avg(sal) from emp group by job);~\
~B) select a.ename from emp a where a.sal < (select avg(b.sal) from emp b where b.deptno = a.deptno);~\
**C) select ename from emp a where a.sal < (select avg(b.sal) from emp b where b.job = a.job);**\
~D) select ename from emp where (deptno, sal) < (select deptno, avg(sal) from emp group by deptno);~
