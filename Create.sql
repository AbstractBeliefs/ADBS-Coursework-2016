-- Create Base Types
CREATE TYPE PhoneNumberType AS OBJECT (
  AreaCode    VARCHAR2(5),
  LocalNumber VARCHAR2(6)
);
CREATE TYPE PhoneNumberNestedType AS TABLE OF PhoneNumberType;

CREATE TYPE PersonNameType AS OBJECT (
  Title     VARCHAR2(10),
  FirstName VARCHAR2(30),
  LastName  VARCHAR2(30)
);

CREATE TYPE LocationType AS OBJECT (
  Street    VARCHAR2(50),
  City      VARCHAR2(50),
  Postcode  VARCHAR2(8)
);

-- Create database objects and their tables
CREATE TYPE Branch AS OBJECT (
  Address   LocationType,
  Phone     PhoneNumberType
);
CREATE TABLE Branches OF Branch;

CREATE TYPE Person AS OBJECT (
  PersonName      PersonNameType,
  Address         LocationType,
  PrimaryPhone    PhoneNumberType,
  SecondaryPhones PhoneNumberNestedType,
  NiNumber        VARCHAR2(9)
) NOT FINAL;
CREATE TABLE People OF Person
  NESTED TABLE SecondaryPhones
  STORE AS Person_SecondaryPhoneTable;

CREATE TYPE Employee UNDER Person (
  Manager   ref Employee,
  Position  VARCHAR2(30), -- TODO Make table for this?
  Office    ref Branch,
  Salary    DECIMAL,
  JoinDate  DATE,
  MEMBER FUNCTION Medal RETURN STRING
);
CREATE OR REPLACE TYPE BODY Employee AS
  MEMBER FUNCTION Medal RETURN STRING IS
    subordinates INT;
    yearsservice INT;
  BEGIN
    SELECT COUNT(*) INTO subordinates FROM Employees e WHERE e.Manager.NiNumber = self.NiNumber;
    -- No Oracle function to convert a number of days into a number of years.
    -- /365 is practical but not accurate - leap years are not accounted for.
    -- Over the max 12 years we care about, there can be up to 3 missed days
    -- because of leap years. A client buying this software must accept a 3
    -- day window or request more accurate handling.
    yearsservice := (SYSDATE - self.JoinDate)/365;
    IF (yearsservice > 12 AND subordinates > 6) THEN
      RETURN 'Gold';
    ELSIF (yearsservice > 6 AND subordinates > 3) THEN
      RETURN 'Silver';
    ELSIF (yearsservice > 4) THEN
      RETURN 'Brown';
    ELSE
      RETURN NULL;
    END IF;
  END Medal;
END;
CREATE TABLE Employees OF Employee
  NESTED TABLE SecondaryPhones
  STORE AS Employee_SecondaryPhoneTable;

CREATE TYPE Account AS OBJECT (
  Office        ref Branch,
  AccountNumber INT,
  AccountType   VARCHAR2(30), -- TODO make this a table?
  Balance       DECIMAL,
  InterestRate  DECIMAL,
  ODLimit       DECIMAL,
  OpenDate      DATE
);
CREATE TABLE Accounts OF Account;

CREATE TYPE AccountCustomerLink AS OBJECT (
  Acc   ref Account,
  Cust  ref Person
);
CREATE TABLE AccountCustomerLinks OF AccountCustomerLink;

-- Useful predicates for handling nested phone tables
CREATE  FUNCTION getPhoneCount (t PHONENUMBERNESTEDTYPE) RETURN INT AS
BEGIN
  RETURN t.COUNT;
END;

CREATE FUNCTION phoneNumberExists (t PHONENUMBERNESTEDTYPE, p PHONENUMBERTYPE) RETURN INT AS
BEGIN
  -- Loop over every number in the subtable and
  -- check if the number matches the pattern given.
  -- Null is the wildcard/don't care.
  -- Needs to return int as Oracle tables don't support bools
  FOR i in t.FIRST .. t.LAST
  LOOP
    IF (t(i).areacode = p.areacode OR p.areacode IS NULL) AND (t(i).localnumber = p.localnumber OR p.localnumber IS NULL) THEN
      RETURN 1;
    END IF;
  END LOOP;
  RETURN 0;
END;