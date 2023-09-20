/*
Oracle SQL Developer

not null = mandatory
null = optional
*/

-- Delete table if it exists
drop table employees cascade constraints;
drop table transaction casecade contraints;

-- Create table
create table employees (
  eid char(7) not null,
  job char(25) null,
  lname char(45) not null,
  manager char(7) null,
  birthdate date null,
  hiredate date not null,
  constraint pk_employee primary key (eid),
  constraint fk_emp_employee foreign key (manager) references employees,
  constraint chk_job check (job in ('Manager', 'Salesman', 'Clerk')),
  constraint chk_dates check (birthdate < hiredate)
);


create table transactions (
  tid number(15) not null,
  tdate date not null,
  tamt number(6,2) not null,
  eid char(7) not null,
  constraint pk_transac primary key (tid),
  constraint fk_transac_emp foreign key (eid) references employees,
  constraint chk_tamt check (tamt > 0),
  constraint chk_tdate check (tdate > '31-DEC-2020')
);

-- List all tables
--select table_name from user_tables;
  
-- Show table structure
--describe employees;
  
-- Oracle objects: tables, views, users, views, indexes, sequences, synonyms, procedures, functions, packages, triggers
--drop view employees;
