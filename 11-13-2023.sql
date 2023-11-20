-- find out how much money it will cost to give salesmen a salary increase of 2%, clerks 4%, and everyone else of 6%
select sum(
  salary * (case when job = 'SALESMAN' then 1.02
      else (case when job = 'CLERK' then 1.04 
      else 1.06 end
    )
  ) as total_salary_increase
  from emp;
