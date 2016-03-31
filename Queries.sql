/* Question 4a */
-- Select all employees with "on" in first name. 3 marks.
SELECT
	e.PersonName.Title AS "Title",
	e.PersonName.FirstName AS "First Name",
	e.PersonName.LastName AS "Last Name"
FROM
  Employees e
WHERE
  UPPER(e.PersonName.FirstName) LIKE '%ON%' -- Normalise to uppercase, as LIKE is case sensitive.
  AND e.Address.City = 'Edinburgh'; -- Select only Edinburgh residents.

/* Question 4b */
-- Find the number of savings accounts at each branch. 3 marks.
SELECT
	-- Get the Branch address
	b.Address.Street AS "Branch Street",
	b.Address.City AS "Branch City",
	-- Get the number of accounts for the branch in a subquery
	(SELECT COUNT(*) FROM Accounts a WHERE a.Office = ref(b) AND a.AccountType = 'savings') AS "Count"
FROM Branches b;

/* Question 4c */
/*
-- Part 1 - Get all Branches
SELECT
	b.Address.Street AS "Branch Steet",
	b.Address.City as "Branch City",
FROM
	Branches b;

-- Part 2 - Get top savings account from a branch
SELECT
  *
FROM
  Accounts a
WHERE
  a.AccountType = 'savings'
  AND
  rownum <= 1
ORDER BY a.balance DESC;

-- Part 3 - Get the customer for an Account
*/
/* Question 4d */
/*
SELECT
	acl.Cust.Office.Address.Street AS "Employee Office Street",
	acl.Cust.Office.Address.City AS "Employee Office City",
	acl.Acc.Office.Address.Street AS "Account Office Street",
	acl.Acc.Office.Address.City AS "Account Office Street"
FROM
	AccountCustomerLinks
WHERE
	acl.Cust.Manager IS NOT NULL; -- TODO: Doesn't work lol
*/
/* Question 4e */
/* Question 4f */
-- Find people with >1 phone, where at least 1 phone
-- has 0770 as the area code. 5 marks.
SELECT
  p.PersonName.FirstName AS "First Name",
  p.PersonName.LastName AS "Last Name",
  t.AreaCode || '-' || t.LocalNumber AS "Phone Number"
FROM
  people p, table(p.SECONDARYPHONES) t
WHERE
  getPhoneCount(p.SECONDARYPHONES) > 1
  AND phoneNumberExists(p.SECONDARYPHONES, PHONENUMBERTYPE('0770', NULL)) = 1;
/* Question 4g */
-- Get the number of subordinates of Mr William, who is subordinate
-- to Mrs Smith. 5 marks.
SELECT
  COUNT(*) AS "Subordinates"
FROM
  Employees e
WHERE
  e.Manager.PersonName.Title = 'Mr' -- Check the 1st manager
  AND e.Manager.PersonName.LastName = 'William'
  AND e.Manager.Manager.PersonName.Title = 'Mrs' -- Check the 2nd manager
  AND e.Manager.Manager.PersonName.LastName = 'Smith';

/* Question 4h */
-- Get the medal appropriate to a worker, given length of service and
-- management status requirements. See also Create.sql. 8 marks.
SELECT
  e.PersonName.FirstName AS "First Name",
  e.PersonName.LastName AS "Last Name",
  e.Medal() AS "Medal"
FROM
  Employees e
WHERE
  e.Medal() IS NOT NULL;	-- Not strictly necessary, and doubles runtime, but nice.