
/* Drop all tables for this project in PL/SQL procedure so we are starting clean every time. */
BEGIN
    -- Drop bridge tables first
    FOR t IN (SELECT table_name FROM user_tables WHERE table_name IN ('CHECKOUT_BOOK', 'RETURN_BOOK', 'RESERVATION_BOOK')) LOOP
        EXECUTE IMMEDIATE 'DROP TABLE ' || t.table_name || ' CASCADE CONSTRAINTS';
    END LOOP;
    
    -- Drop main tables
    FOR t IN (SELECT table_name FROM user_tables WHERE table_name IN ('CHECKOUT', 'RETURN', 'RESERVATION', 'BOOK', 'STUDENT')) LOOP
        EXECUTE IMMEDIATE 'DROP TABLE ' || t.table_name || ' CASCADE CONSTRAINTS';
    END LOOP;
END;
/

-- Create core tables first w/ duplicated Forign keys where needed.
CREATE TABLE Student (
    StudentID NUMBER(7) PRIMARY KEY,
    LastName VARCHAR2(25), -- Some nationalities do not use last names.
    FirstName VARCHAR2(25) NOT NULL,
    Major VARCHAR2(25), -- Some people will not have a major
    BirthDate DATE -- Was optional in the source diagram
);

CREATE TABLE Reservation (
    ReservationID NUMBER(7) PRIMARY KEY,
    StudentID NUMBER(7) NOT NULL,
    ReservationDate DATE NOT NULL,
    Urgent NUMBER(1) CHECK (Urgent IN (0, 1)), -- Oracle SQL does not support boolean values for some reason so we will just constrain a num(1) value using 0 for false and 1 for true.
    FOREIGN KEY (StudentID) REFERENCES Student(StudentID) -- Add FK for 1:m relationship
);

CREATE TABLE Return (
    TransactionID NUMBER(7) PRIMARY KEY,
    StudentID NUMBER(7) NOT NULL,
    TransactionDate DATE NOT NULL,
    FOREIGN KEY (StudentID) REFERENCES Student(StudentID) -- Add FK for 1:m relationship
);

CREATE TABLE Checkout (
    TransactionID NUMBER(7) PRIMARY KEY,
    StudentID NUMBER(7) NOT NULL,
    CheckoutDate DATE NOT NULL,
    FOREIGN KEY (StudentID) REFERENCES Student(StudentID) -- Add fk for 1:m relationship
);

CREATE TABLE Book (
    ISBN CHAR(13) NOT NULL,
    Copy NUMBER(7) NOT NULL,
    PRIMARY KEY (ISBN, Copy) -- We add ISBN - Copy combo as PK after creating each field
);

-- Create bridge tables for m:m
CREATE TABLE Reservation_Book (
    ReservationID NUMBER(7),
    ISBN CHAR(13),
    Copy NUMBER(7),
    PRIMARY KEY (ReservationID, ISBN, Copy),
    FOREIGN KEY (ReservationID) REFERENCES Reservation(ReservationID),
    FOREIGN KEY (ISBN, Copy) REFERENCES Book(ISBN, Copy)
);

CREATE TABLE Return_Book (
    TransactionID NUMBER(7),
    ISBN CHAR(13),
    Copy NUMBER(7),
    PRIMARY KEY (TransactionID, ISBN, Copy),
    FOREIGN KEY (TransactionID) REFERENCES Return(TransactionID),
    FOREIGN KEY (ISBN, Copy) REFERENCES Book(ISBN, Copy)
);

CREATE TABLE Checkout_Book (
    TransactionID NUMBER(7),
    ISBN CHAR(13),
    Copy NUMBER(7),
    PRIMARY KEY (TransactionID, ISBN, Copy),
    FOREIGN KEY (TransactionID) REFERENCES Checkout(TransactionID),
    FOREIGN KEY (ISBN, Copy) REFERENCES Book(ISBN, Copy)
);

