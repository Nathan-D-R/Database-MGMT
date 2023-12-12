BEGIN
    FOR t IN (SELECT table_name FROM user_tables) LOOP
        EXECUTE IMMEDIATE 'DROP TABLE ' || t.table_name || ' CASCADE CONSTRAINTS';
    END LOOP;
END;
/

CREATE TABLE Accounts (
  AccountID NUMBER PRIMARY KEY,
  Balance NUMBER  
);

CREATE TABLE Savings (
  AccountID NUMBER PRIMARY KEY,
  InterestRate NUMBER,
  FOREIGN KEY (AccountID) REFERENCES Accounts(AccountID)
);

CREATE TABLE Checking (
  AccountID NUMBER PRIMARY KEY,
  MinimumBalance NUMBER,
  CheckQuota NUMBER,
  FOREIGN KEY (AccountID) REFERENCES Accounts(AccountID)
);

CREATE TABLE Transactions (
  TransactionID NUMBER PRIMARY KEY,
  TransactionDate DATE,
  TransactionAmount NUMBER,
  AccountID NUMBER,
  FOREIGN KEY (AccountID) REFERENCES Accounts(AccountID)
);

CREATE TABLE Employees (
  EmployeeID NUMBER PRIMARY KEY,
  FirstName VARCHAR2(50),
  LastName VARCHAR2(50) NOT NULL,
  Salary NUMBER,
  Job VARCHAR2(100),
  HireDate DATE,
  ManagerID NUMBER,
  FOREIGN KEY (ManagerID) REFERENCES Employees(EmployeeID)
);

CREATE TABLE Performing (
  Role VARCHAR2(50),
  Rating NUMBER,
  "Comment" VARCHAR2(500), -- This stumped me, Oracle's reserved words list is excessively long.
  TransactionID NUMBER,  
  EmployeeID NUMBER,
  FOREIGN KEY (TransactionID) REFERENCES Transactions(TransactionID),
  FOREIGN KEY (EmployeeID) REFERENCES Employees(EmployeeID)
);
