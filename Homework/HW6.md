*(select all that apply) Which of following tables have the violation of the Boyce-Codd normal Form with the following assumptions:* 
*1) Each student may several advisors*
*2) Each zip is for one city*
*3) SSN is unique for all students (1 point)*
~A. Students (SID, Iname, fname, address)~
# B. Students (SID, Iname, fname, Advisor, RelationshipRating)
~C. students (SID, Inane, fname, state, major)~
# D. students (SID, Iname, fname, state, city, zip)
~E. Students (SID, Iname, fname, state, SSN)~

*The essential condition of third normal form is automatically satisfied when (1 point)*
# A. a table has only one non-key column
~B. a table has only one key column~
~C. a table has only one primary key~
~D. atable has no foreign key~

*(check all that apply) What are the basic elements in a typical SQL DML statement? (1 point)*
# A. type of action
# B. table names
# C. column names
~D. primary key~
# E. record filtering condtions

*The violation of the third normal form is often due to combining tables whose records are in (1 po&nt)*
~A. 1:1 relationships~
# B. 1:m relationships 
~C. m:m relationships~ 
~D. 0:0 relationships~

*(select all that apply) Boyce-Codd normal form would be violated if we combine tables whose records are in which of the following relationships? (1 point)*
~A 1:1~
# B. 1:m
# C. m:m
~D. None of the above~

*If a non-key column determines a key column, which normal form is violated? (1 point)*
~A. 1NF~
~B. 2NF~
~C. 3NF~
# D. BCNF

*A transitive dependency is equivalent to which of the following? (1 point)*
~A. (O A functional dependency between two or more key attributes.~
# B. A functional dependency between two or more nonkey attributes.
~C. A relation that is in first normal form.~
~D. A relation that is in second normal form.~

*In the ER model for a library checkout system, the involved entities include Book, BookCopy, Patron, Checkout, Return, Reservation, Employee, and Transaction. Assume each return is for many books. If a book is returned with damage, where do you record the information so that we can track the damage by user in case we need to? (1 point)*
~A. Book~
~B. BookCopy~
~C. Patron~
# D. Association between Return and BookCopy
~E. Return~

*The violation of the second normal form is often due to combining tables whose records are in (1 point)*
~A. 1:1 relationships~
~B. 1:m relationships~
# C. m:m relationships
~D. 0:0 relationships~

*(check all that apply) What is the relationship between the 3rd and Boyce-Codd normal form? (1 point)*
# A. if BCNF is satisfied, &en is the 3NF
~B. If BCNF is violated, then 3NF is also violated~
~C. Both normal forms are identidal~
# D. If 3NF is violated, then BCNF is also violated.
