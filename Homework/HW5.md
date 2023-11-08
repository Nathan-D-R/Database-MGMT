# TICKETS (Ticket_ID, Empl_ID, Text, Type, Status)
# Ticket_ID -> Empl_ID Ticket ID -> Text Ticket_ID -> Type Ticket ID -> Status

# Relational table TICKETS has ______ (1 point)
~A. Multi-valued attributes~
~B. Partial dependencies~
~C. Transitive dependencies~
**D. None of the above**


# A key should be defined as: (1 point)
~A. the attribute(s) that functionally depend on other attributes in a table.~
**B. the attribute(s) that functionally determine on other attributes in a table.**
~C. Either of the above can be used.~
~D. None of the above are correct.~

# (select all that apply) One of the signals for a poor database design is redundancy, which can cause (1 point)
~A. selection anomaly~
**B. deletion anomaly**
**C. insertion anomaly**
**D. Extra Storage**

# ROOM_ASSIGNMENT (Session_ID, Room_Number, Room_ Capacity, Start_Time, End_Time)
# Session_ID -> Room_Number
# Session_ID -> Start_Time
# Session_ID -> End_Time
# Room_Number -> Capacity
# Bringing relational table ROOM_ ASSIGNMENT to the 3NF would result in creation of (1 point)
~A. 3 tables: ROOM_ASSIGNMENT (Session_ID, Room_Number), ROOM (Room_Number, Room_ Capacity) and SION(Session_ID, Start_Time, End_Time)~
**B. 2 tables: ROOM_ASSIGNMENT (Session_ID, Start_Time, End_Time Room_Number) and ROOM (Room_Number, Room_Capacity)**
~C. 2 tables: ROOM_ASSIGNMENT (Session_ID, Start_Time, End_Time) and ROOM (Room_Number, Room_Capacity)~
~D. ROOM_ASSIGNMENT relation is already in 3NF and does not require any transformation.~

# In the table Enrollments (studentID, courseNo, sectionNo, grade, status), which of the following functional dependency is true? (1 point)
~A. studentID --> grade~
**B. studentID, courseNo, sectionNo --> grade, status**
~C. studentID, courseNo --> grade, status~
~D. grade, status --> studentID, courseNo, sectionNo~

# ASSET_USE (Asset_ID, Empl_ID, Asset_Value, Empl_Name)
# Asset ID -> Asset Value Empl_ID -> Empl_Name
# Relational table ASSET_USE has (1 point) 
~A. Multivalued attributes~
**B. Partial dependencies**
~C. Transitive dependencies~
~D. None of the above~

# Assume each bank branch can issue loan independently of other branches and assume customers may jointly make a loan. Which of the following is correct functional dependency for the table Loans (CustomerID, Branch, LoanNo, LoanAmount)? (1 point)
~A. CustomerID --> LoadNo, LoanAmount~
~B. CustomerID, Branch --> LoanNo, LoanAmount~
~C. LoanNo, Branch --> CustomerID~
**D. Branch, LoanNo --> LoanAmount**
~E. LoanNo --> LoanAmount~

# ASSET_USE (Asset_ID, Empl_ID, Asset_Value, Empl_Name)
# Asset ID -> Asset Value Empl_ID -> Empl_Name
# Bringing relational table ASSET_USE to the 2NF would result in creation of (1 point)# 
**A. 3 tables: a. ASSET_USE (Asset_ID, Empl_ID), b. ASSET (Asset_ID, Asset_Value) and c. EMPLOYEE (Empl_ID, Empl_Name)**
~B. 2 tables: a. ASSET (Asset_ID, Asset_Value) and b. EMPLOYEE (Empl_ID, Empl_Name)~
~C. 2 tables: a. ASSET_USE (Asset_ID, Empl_ID, Empl_Name), b. ASSET (Asset_ID, Asset_Value) and~
~D. ASSET_USE relation is already in 2NF and does not require any transformation.~

# (check all that apply) Under what conditions, the 3rd normal form is automatically satisfied if a relation is in the 2nd normal form? (1 point)
**A. a table has only one non-key column** 
~B. a table has only one key-column~
~C. a table has two key-columns~
**D. a table has no non-key column**

# If no multivalued attributes exist and no partial dependencies (non-key columns depends on a part of the key) exist in a relation, then the relation is in what normal form? (1 point)
~A. First normal form~
**B. Second normal form**
~C. Third normal form~
~D. Fourth normal form~


