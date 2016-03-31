/* Question 4a */
-- Select all name parts, where name has "ON" when uppercased
-- (like is case-sensitive) and in Edinburgh.
SELECT
	e.PersonName.Title AS "Title",
	e.PersonName.FirstName AS "First Name",
	e.PersonName.LastName AS "Last Name"
FROM Employees e
WHERE UPPER(e.PersonName.FirstName) LIKE '%ON%'
AND e.Address.City = 'Edinburgh';

/* Question 4b */
SELECT
	-- Get the Branch address
	b.Address.Street AS "Branch Street",
	b.Address.City AS "Branch City",
	-- Get the number of accounts for the branch in a subquery
	(SELECT COUNT(*) FROM Accounts a WHERE a.Office = ref(b)) AS "Count"
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
/* Question 4g */
SELECT COUNT(*) AS "Subordinates" FROM Employees e
WHERE e.Manager.PersonName.Title = 'Mr'
AND e.Manager.PersonName.LastName = 'William'
AND e.Manager.Manager.PersonName.Title = 'Mrs'
AND e.Manager.Manager.PersonName.LastName = 'Smith';

/* Question 4h */
SELECT
  e.PersonName.FirstName AS "First Name",
  e.PersonName.LastName AS "Last Name",
  e.Medal() AS "Medal"
FROM
  Employees e
WHERE
  e.Medal() IS NOT NULL;	-- Not strictly necessary, and doubles runtime, but nice.