-- Create some Edinburgh Branches
INSERT INTO Branches VALUES (
  LocationType('Lothian Road', 'Edinburgh', 'EH11 123'),
  PhoneNumberType('01383', '123321')
);

-- Create 3 employees, two with "on" and 1 without
-- Who live in Edinburgh, and one who doesn't
INSERT INTO Employees VALUES (
    PersonNameType('Mr', 'Jon', 'Peterham'),
    LocationType('Dalry Road', 'Edinburgh', 'EH3 123'),
    PhoneNumberType('87291', '576902'),
    PHONENUMBERNESTEDTYPE(),
    '364722987',

    NULL,     -- Manager, Null
    'Manager',
    (SELECT ref(b) FROM Branches b WHERE b.Address.Street = 'Lothian Road' and b.Address.City = 'Edinburgh'),
    '115305',
    '21-Feb-2016'
);
INSERT INTO Employees VALUES (
    PersonNameType('Mr', 'Jackson', 'Marshall'),
    LocationType('Gorgie Road', 'Glasgow', 'G20 413'),
    PhoneNumberType('87291', '592617'),
    PHONENUMBERNESTEDTYPE(),
    '657651623',

    NULL,     -- Manager, Null
    'Manager',
    (SELECT ref(b) FROM Branches b WHERE b.Address.Street = 'Lothian Road' and b.Address.City = 'Edinburgh'),
    '115305',
    '21-Feb-2016'
);
INSERT INTO Employees VALUES (
    PersonNameType('Mr', 'Peter', 'Key'),
    LocationType('Princes Street', 'Edinburgh', 'EH2 123'),
    PhoneNumberType('87291', '592006'),
    PHONENUMBERNESTEDTYPE(),
    '332857623',

    NULL,     -- Manager, Null
    'Manager',
    (SELECT ref(b) FROM Branches b WHERE b.Address.Street = 'Lothian Road' and b.Address.City = 'Edinburgh'),
    '115305',
    '21-Feb-2016'
);

-- Create a chain of employees with Management properties set.
INSERT INTO Employees VALUES (
    PersonNameType('Mrs', 'Henrietta', 'Smith'),
    LocationType('Princes Street', 'Edinburgh', 'EH2 123'),
    PhoneNumberType('87291', '592006'),
    PHONENUMBERNESTEDTYPE(),
    'HS4039753',

    NULL,     -- Manager, Null
    'Manager',
    (SELECT ref(b) FROM Branches b WHERE b.Address.Street = 'Lothian Road' and b.Address.City = 'Edinburgh'),
    '115305',
    '21-Feb-2016'
);

INSERT INTO Employees VALUES (
    PersonNameType('Mr', 'Lacks', 'William'),
    LocationType('Princes Street', 'Edinburgh', 'EH2 123'),
    PhoneNumberType('87291', '592006'),
    PHONENUMBERNESTEDTYPE(),
    'LW2857623',

    -- Managed by Henrietta Smith
    (SELECT ref(e) FROM Employees e WHERE e.NiNumber = 'HS4039753'),
    'Manager',
    (SELECT ref(b) FROM Branches b WHERE b.Address.Street = 'Lothian Road' and b.Address.City = 'Edinburgh'),
    '115305',
    '21-Feb-2009'
);

INSERT INTO Employees VALUES (
    PersonNameType('Mr', 'Jonas', 'Schmidt'),
    LocationType('Princes Street', 'Edinburgh', 'EH2 123'),
    PhoneNumberType('87291', '592006'),
    PHONENUMBERNESTEDTYPE(),
    'JS4678923',

    -- Managed by Lacks William
    (SELECT ref(e) FROM Employees e WHERE e.NiNumber = 'LW2857623'),
    'Manager',
    (SELECT ref(b) FROM Branches b WHERE b.Address.Street = 'Lothian Road' and b.Address.City = 'Edinburgh'),
    '115305',
    '21-Feb-2016'
);

INSERT INTO Employees VALUES (
    PersonNameType('Mr', 'Peter', 'Andre'),
    LocationType('Princes Street', 'Edinburgh', 'EH2 123'),
    PhoneNumberType('87291', '592006'),
    PHONENUMBERNESTEDTYPE(),
    'PA4678923',

    -- Managed by Lacks William
    (SELECT ref(e) FROM Employees e WHERE e.NiNumber = 'LW2857623'),
    'Manager',
    (SELECT ref(b) FROM Branches b WHERE b.Address.Street = 'Lothian Road' and b.Address.City = 'Edinburgh'),
    '115305',
    '21-Feb-2016'
);

INSERT INTO Employees VALUES (
    PersonNameType('Mrs', 'Alice', 'McGhee'),
    LocationType('Princes Street', 'Edinburgh', 'EH2 123'),
    PhoneNumberType('87291', '592006'),
    PHONENUMBERNESTEDTYPE(),
    'AM4678923',

    -- Managed by Lacks William
    (SELECT ref(e) FROM Employees e WHERE e.NiNumber = 'LW2857623'),
    'Manager',
    (SELECT ref(b) FROM Branches b WHERE b.Address.Street = 'Lothian Road' and b.Address.City = 'Edinburgh'),
    '115305',
    '21-Dec-1993'
);

INSERT INTO Employees VALUES (
    PersonNameType('Mrs', 'Silver', 'Smith'),
    LocationType('Princes Street', 'Edinburgh', 'EH2 123'),
    PhoneNumberType('87291', '592006'),
    PHONENUMBERNESTEDTYPE(),
    'SS4678923',

    -- Managed by Lacks William
    (SELECT ref(e) FROM Employees e WHERE e.NiNumber = 'LW2857623'),
    'Manager',
    (SELECT ref(b) FROM Branches b WHERE b.Address.Street = 'Lothian Road' and b.Address.City = 'Edinburgh'),
    '115305',
    '21-Dec-1993'
);

-- Some Medal winners
-- Gold
INSERT INTO Employees VALUES (
    PersonNameType('Mrs', 'Gold', 'Medal'),
    LocationType('Princes Street', 'Edinburgh', 'EH2 123'),
    PhoneNumberType('87291', '592006'),
    PHONENUMBERNESTEDTYPE(),
    'GM0000000',

    NULL,
    'Manager',
    NULL,
    '115305',
    '21-Dec-1993'
);
INSERT INTO Employees VALUES (
    PersonNameType('Mrs', 'Gold', 'Clerk'),
    LocationType('Princes Street', 'Edinburgh', 'EH2 123'),
    PhoneNumberType('87291', '592006'),
    PHONENUMBERNESTEDTYPE(),
    'GM0000001',

    (SELECT ref(e) FROM Employees e WHERE e.NiNumber = 'GM0000000'),
    '',
    NULL,
    '115305',
    '21-Dec-2015'
);
INSERT INTO Employees VALUES (
    PersonNameType('Mrs', 'Gold', 'Clerk'),
    LocationType('Princes Street', 'Edinburgh', 'EH2 123'),
    PhoneNumberType('87291', '592006'),
    PHONENUMBERNESTEDTYPE(),
    'GM0000002',

    (SELECT ref(e) FROM Employees e WHERE e.NiNumber = 'GM0000000'),
    '',
    NULL,
    '115305',
    '21-Dec-2015'
);
INSERT INTO Employees VALUES (
    PersonNameType('Mrs', 'Gold', 'Clerk'),
    LocationType('Princes Street', 'Edinburgh', 'EH2 123'),
    PhoneNumberType('87291', '592006'),
    PHONENUMBERNESTEDTYPE(),
    'GM0000003',

    (SELECT ref(e) FROM Employees e WHERE e.NiNumber = 'GM0000000'),
    '',
    NULL,
    '115305',
    '21-Dec-2015'
);
INSERT INTO Employees VALUES (
    PersonNameType('Mrs', 'Gold', 'Clerk'),
    LocationType('Princes Street', 'Edinburgh', 'EH2 123'),
    PhoneNumberType('87291', '592006'),
    PHONENUMBERNESTEDTYPE(),
    'GM0000004',

    (SELECT ref(e) FROM Employees e WHERE e.NiNumber = 'GM0000000'),
    '',
    NULL,
    '115305',
    '21-Dec-2015'
);
INSERT INTO Employees VALUES (
    PersonNameType('Mrs', 'Gold', 'Clerk'),
    LocationType('Princes Street', 'Edinburgh', 'EH2 123'),
    PhoneNumberType('87291', '592006'),
    PHONENUMBERNESTEDTYPE(),
    'GM0000005',

    (SELECT ref(e) FROM Employees e WHERE e.NiNumber = 'GM0000000'),
    '',
    NULL,
    '115305',
    '21-Dec-2015'
);
INSERT INTO Employees VALUES (
    PersonNameType('Mrs', 'Gold', 'Clerk'),
    LocationType('Princes Street', 'Edinburgh', 'EH2 123'),
    PhoneNumberType('87291', '592006'),
    PHONENUMBERNESTEDTYPE(),
    'GM0000006',

    (SELECT ref(e) FROM Employees e WHERE e.NiNumber = 'GM0000000'),
    '',
    NULL,
    '115305',
    '21-Dec-2015'
);
INSERT INTO Employees VALUES (
    PersonNameType('Mrs', 'Gold', 'Clerk'),
    LocationType('Princes Street', 'Edinburgh', 'EH2 123'),
    PhoneNumberType('87291', '592006'),
    PHONENUMBERNESTEDTYPE(),
    'GM0000007',

    (SELECT ref(e) FROM Employees e WHERE e.NiNumber = 'GM0000000'),
    '',
    NULL,
    '115305',
    '21-Dec-2015'
);

-- For phone number checking
INSERT INTO PEOPLE VALUES (
    PERSONNAMETYPE('Ms', 'NotEnough', 'Phones'),
    LOCATIONTYPE('Waterloo Street', 'Aberdeen', 'LU E84'),
    PHONENUMBERTYPE('89503','172419'),
    PHONENUMBERNESTEDTYPE(
        PHONENUMBERTYPE('0770', '223560')
    ),
    '076481805'
);
INSERT INTO PEOPLE VALUES (
    PERSONNAMETYPE('Ms', 'Plenty', 'Phones'),
    LOCATIONTYPE('Waterloo Street', 'Aberdeen', 'LU E84'),
    PHONENUMBERTYPE('89503','172419'),
    PHONENUMBERNESTEDTYPE(
        PHONENUMBERTYPE('0770', '029090'),
        PHONENUMBERTYPE('71057', '223560')
    ),
    '076481805'
);