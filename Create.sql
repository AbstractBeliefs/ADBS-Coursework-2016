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
  JoinDate  DATE
);
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