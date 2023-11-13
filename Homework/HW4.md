## How do you create a sequence that can generate integers numbers 1, 5, 9, 13, ...? (1 point)*
*A. create sequence mySEQ start with 1 increment by 4;*\
~B. create sequence mySQL as 1, 5, 9, 13, ...;~\
~C. create sequence mySEQ start with 4 increment by 1;~\
~D. create sequence mySEQ start 1 and increment 4;~

## What SQL command will allow you to change the table STUDENT to add the constraint named GradeCheck that states that the values of the Grade column must be greater than 0? (1 point)*
~A. ALTER TABLE STUDENT ALTER CONSTRAINT GradeCheck (Grade > 0);~\
~B. ALTER TABLE STUDENT ADD CONSTRAINT GradeCheck (Grade > 0);~\
*C. ALTER TABLE STUDENT ADD CONSTRAINT GradeCheck CHECK (Grade > 0);*\
~D. None of the above is correct.~

## What is the command to remove table xyz and also any constraints that are attached to it? (1 point)*
~A. O drop table xyz;~\
~B. O delete from xyz;~\
*C. O drop table xyz cascade constraints;*\
~D. O delete from xyz where count(## ) >=1;~

## (check all that are necessary) Which Oracle server parameters do you need to know in order to set up an client to connect to the server? (1 point)*
*A. Host Name or IP address of the server*\
~B. Oracle Serial Number~\
*C. TCP Port Number to Oracle Service*\
*D. Oracle Instance ID*\
~E. Operation Systems that Holds Oracle~

## Based on the following SQL script, which command is correct to change the size of title to varchar2(50)? (1 point)*
```{sql}
create table books (
ISBN char(15),
title varchar2(100),
price number(4,2) null,
constraint pk_bk primary key (ISBN));
```
~A. alter table books modify (title varchar2(50));~\
~B. alter table books alter (title varchar2(50));~\
~C. alter table books modify (title char(50));~\
~D. alter table books alter (title char(50));~\
*E. none of the above*

## In SQL statements, constraint X foreign key (Y) references Z, what is Y? (1 point)*
*A. The name of the foreign key columns in the current table*\
~B. The name of the constraint~\
~C. The name of the table to which the foreign resides~\
~D. The name of the table from which the corresponding PK resides~\
~E. The name of primary key columns in the referenced table~

## Which of the following is NOT required by the referential integrity rule #1 (1 point)*
~A. O A foreign key column must have the same data type as the corresponding primary key column~\
~B. O A foreign key column must have the same field size as the corresponding primary key column~\
*C. O A foreign key column must have the optionality as the corresponding primary key column*\
~D. O None of the above~

## What SQL command can be used to delete columns from a table? (1 point)*
~A. MODIFY TABLE TableName DROP COLUMN ColumnName~\
~B. MODIFY TABLE TableName DROP ColumnName~\
*C. ALTER TABLE TableName DROP COLUMN ColumnName*\
~D. ALTER TABLE TableName DROP ColumnName~

## Referential integrity rules allow which of the following? (1 point)*
~A. FK column has different data type from the corresponding PK column~\
~B. FK column has different data size from the corresponding PK column~\
*C. FK column has different name from the corresponding PK column*\
~D. FK column has data not in the corresponding PK column~

## (check all that apply) Which of the following may use check constraints? (1 point)*
~A. primary key~\
~B. foreign key~\
*C. domain validation rules*\
*D. Business rules*\
*E. Arc implementation*
