INSERT INTO Branches VALUES (
  LocationType('Beech Street', 'London', 'WS11 00'),
  PhoneNumberType('01383', '501293')
);
INSERT INTO Branches VALUES (
  LocationType('Camberwell Grove', 'London', 'WS11 01'),
  PhoneNumberType('01383', '835242')
);
INSERT INTO Branches VALUES (
  LocationType('Clerkenwell', 'London', 'WS11 02'),
  PhoneNumberType('01383', '476635')
);
INSERT INTO Branches VALUES (
  LocationType('Clifford', 'London', 'WS11 03'),
  PhoneNumberType('01383', '170677')
);
INSERT INTO Branches VALUES (
  LocationType('Egerton', 'London', 'WS11 04'),
  PhoneNumberType('01383', '327942')
);
INSERT INTO Branches VALUES (
  LocationType('Elgin', 'London', 'WS11 05'),
  PhoneNumberType('01383', '783152')
);
INSERT INTO Branches VALUES (
  LocationType('Fann', 'London', 'WS11 06'),
  PhoneNumberType('01383', '419624')
);
INSERT INTO Branches VALUES (
  LocationType('Fleet', 'London', 'WS11 07'),
  PhoneNumberType('01383', '347507')
);
INSERT INTO Branches VALUES (
  LocationType('Hackney', 'London', 'WS11 08'),
  PhoneNumberType('01383', '184382')
);
INSERT INTO Branches VALUES (
  LocationType('Holborn', 'London', 'WS11 09'),
  PhoneNumberType('01383', '735432')
);
INSERT INTO Branches VALUES (
  LocationType('Maddox', 'London', 'WS11 010'),
  PhoneNumberType('01383', '020647')
);
INSERT INTO Branches VALUES (
  LocationType('Manresa', 'London', 'WS11 011'),
  PhoneNumberType('01383', '132801')
);
INSERT INTO Branches VALUES (
  LocationType('Northcote', 'London', 'WS11 012'),
  PhoneNumberType('01383', '830170')
);
INSERT INTO Branches VALUES (
  LocationType('Pentonville', 'London', 'WS11 013'),
  PhoneNumberType('01383', '284789')
);
INSERT INTO Branches VALUES (
  LocationType('Streatham', 'London', 'WS11 014'),
  PhoneNumberType('01383', '395817')
);
INSERT INTO Branches VALUES (
  LocationType('Turnmill', 'London', 'WS11 015'),
  PhoneNumberType('01383', '327821')
);
INSERT INTO Branches VALUES (
  LocationType('Vigo', 'London', 'WS11 016'),
  PhoneNumberType('01383', '710754')
);
INSERT INTO Branches VALUES (
  LocationType('Watling', 'London', 'WS11 017'),
  PhoneNumberType('01383', '569956')
);
INSERT INTO Branches VALUES (
  LocationType('West', 'London', 'WS11 018'),
  PhoneNumberType('01383', '066374')
);
INSERT INTO Branches VALUES (
  LocationType('Whitecross', 'London', 'WS11 019'),
  PhoneNumberType('01383', '046913')
);

INSERT INTO PEOPLE VALUES (
    PERSONNAMETYPE('Mr', 'John', 'Smith'),
    LOCATIONTYPE('Baker Street', 'London', 'TY Z09'),
    PHONENUMBERTYPE('77263','185804'),
    PHONENUMBERNESTEDTYPE(
        PHONENUMBERTYPE('67885', '863090'),
        PHONENUMBERTYPE('04265', '277046')
    ),
    '033078774'
);

INSERT INTO PEOPLE VALUES (
    PERSONNAMETYPE('Mr', 'John', 'Johnson'),
    LOCATIONTYPE('Baker Street', 'Manchester', 'VT X79'),
    PHONENUMBERTYPE('19228','857367'),
    PHONENUMBERNESTEDTYPE(
        PHONENUMBERTYPE('46748', '060275'),
        PHONENUMBERTYPE('23566', '347461')
    ),
    '924930650'
);

INSERT INTO PEOPLE VALUES (
    PERSONNAMETYPE('Ms', 'John', 'Williams'),
    LOCATIONTYPE('Baker Street', 'Leeds', 'LO I19'),
    PHONENUMBERTYPE('91129','250465'),
    PHONENUMBERNESTEDTYPE(
        PHONENUMBERTYPE('65674', '872517'),
        PHONENUMBERTYPE('58732', '362023')
    ),
    '024777763'
);

INSERT INTO PEOPLE VALUES (
    PERSONNAMETYPE('Ms', 'John', 'Brown'),
    LOCATIONTYPE('Baker Street', 'Glasgow', 'YL Z80'),
    PHONENUMBERTYPE('96125','455335'),
    PHONENUMBERNESTEDTYPE(
        PHONENUMBERTYPE('00025', '025837'),
        PHONENUMBERTYPE('23597', '074126')
    ),
    '998709242'
);

INSERT INTO PEOPLE VALUES (
    PERSONNAMETYPE('Mrs', 'John', 'Frankson'),
    LOCATIONTYPE('Baker Street', 'Aberdeen', 'KL M79'),
    PHONENUMBERTYPE('90405','393428'),
    PHONENUMBERNESTEDTYPE(
        PHONENUMBERTYPE('48961', '936412'),
        PHONENUMBERTYPE('71622', '186131')
    ),
    '701917222'
);

INSERT INTO PEOPLE VALUES (
    PERSONNAMETYPE('Mr', 'John', 'Peterson'),
    LOCATIONTYPE('Baker Street', 'Southampton', 'LH I41'),
    PHONENUMBERTYPE('12902','739757'),
    PHONENUMBERNESTEDTYPE(
        PHONENUMBERTYPE('07073', '078213'),
        PHONENUMBERTYPE('27663', '490290')
    ),
    '262251881'
);

INSERT INTO PEOPLE VALUES (
    PERSONNAMETYPE('Mr', 'John', 'Hemmingway'),
    LOCATIONTYPE('Baker Street', 'Milton Keynes', 'YQ G91'),
    PHONENUMBERTYPE('71150','429972'),
    PHONENUMBERNESTEDTYPE(
        PHONENUMBERTYPE('56333', '749660'),
        PHONENUMBERTYPE('57350', '307271')
    ),
    '192571934'
);

INSERT INTO PEOPLE VALUES (
    PERSONNAMETYPE('Mrs', 'Jack', 'Smith'),
    LOCATIONTYPE('Baker Street', 'Aberdeen', 'KP O73'),
    PHONENUMBERTYPE('66455','024758'),
    PHONENUMBERNESTEDTYPE(
        PHONENUMBERTYPE('44242', '801668'),
        PHONENUMBERTYPE('86665', '307283')
    ),
    '287830698'
);

INSERT INTO PEOPLE VALUES (
    PERSONNAMETYPE('Mrs', 'Jack', 'Johnson'),
    LOCATIONTYPE('Baker Street', 'Cardiff', 'OZ N90'),
    PHONENUMBERTYPE('81516','811160'),
    PHONENUMBERNESTEDTYPE(
        PHONENUMBERTYPE('08804', '081748'),
        PHONENUMBERTYPE('96860', '316846')
    ),
    '881211121'
);

INSERT INTO PEOPLE VALUES (
    PERSONNAMETYPE('Mr', 'Jack', 'Williams'),
    LOCATIONTYPE('Baker Street', 'Swansea', 'NG H95'),
    PHONENUMBERTYPE('70693','303503'),
    PHONENUMBERNESTEDTYPE(
        PHONENUMBERTYPE('76329', '478989'),
        PHONENUMBERTYPE('77011', '211479')
    ),
    '363952371'
);

INSERT INTO PEOPLE VALUES (
    PERSONNAMETYPE('Mrs', 'Jack', 'Brown'),
    LOCATIONTYPE('Waterloo Street', 'London', 'DD Y46'),
    PHONENUMBERTYPE('57653','342042'),
    PHONENUMBERNESTEDTYPE(
        PHONENUMBERTYPE('68756', '079714'),
        PHONENUMBERTYPE('25452', '921586')
    ),
    '920112686'
);

INSERT INTO PEOPLE VALUES (
    PERSONNAMETYPE('Mrs', 'Jack', 'Frankson'),
    LOCATIONTYPE('Waterloo Street', 'Manchester', 'WA U55'),
    PHONENUMBERTYPE('83429','086953'),
    PHONENUMBERNESTEDTYPE(
        PHONENUMBERTYPE('18083', '982451'),
        PHONENUMBERTYPE('73821', '056392')
    ),
    '749238396'
);

INSERT INTO PEOPLE VALUES (
    PERSONNAMETYPE('Ms', 'Jack', 'Peterson'),
    LOCATIONTYPE('Waterloo Street', 'Leeds', 'IV N67'),
    PHONENUMBERTYPE('08221','093673'),
    PHONENUMBERNESTEDTYPE(
        PHONENUMBERTYPE('54345', '835612'),
        PHONENUMBERTYPE('71806', '275689')
    ),
    '126520678'
);

INSERT INTO PEOPLE VALUES (
    PERSONNAMETYPE('Ms', 'Jack', 'Hemmingway'),
    LOCATIONTYPE('Waterloo Street', 'Glasgow', 'SD Q67'),
    PHONENUMBERTYPE('91001','267416'),
    PHONENUMBERNESTEDTYPE(
        PHONENUMBERTYPE('76584', '798652'),
        PHONENUMBERTYPE('76681', '644035')
    ),
    '840859453'
);

INSERT INTO PEOPLE VALUES (
    PERSONNAMETYPE('Ms', 'Michael', 'Smith'),
    LOCATIONTYPE('Waterloo Street', 'Aberdeen', 'UX P22'),
    PHONENUMBERTYPE('57358','340506'),
    PHONENUMBERNESTEDTYPE(
        PHONENUMBERTYPE('77908', '596993'),
        PHONENUMBERTYPE('15941', '358155')
    ),
    '427872902'
);

INSERT INTO PEOPLE VALUES (
    PERSONNAMETYPE('Mr', 'Michael', 'Johnson'),
    LOCATIONTYPE('Waterloo Street', 'Southampton', 'XI R93'),
    PHONENUMBERTYPE('78874','518259'),
    PHONENUMBERNESTEDTYPE(
        PHONENUMBERTYPE('74669', '996419'),
        PHONENUMBERTYPE('67415', '654637')
    ),
    '343140119'
);

INSERT INTO PEOPLE VALUES (
    PERSONNAMETYPE('Mrs', 'Michael', 'Williams'),
    LOCATIONTYPE('Waterloo Street', 'Milton Keynes', 'YL J69'),
    PHONENUMBERTYPE('77567','151657'),
    PHONENUMBERNESTEDTYPE(
        PHONENUMBERTYPE('12349', '422750'),
        PHONENUMBERTYPE('20117', '031620')
    ),
    '603136251'
);

INSERT INTO PEOPLE VALUES (
    PERSONNAMETYPE('Ms', 'Michael', 'Brown'),
    LOCATIONTYPE('Waterloo Street', 'Aberdeen', 'LU E84'),
    PHONENUMBERTYPE('89503','172419'),
    PHONENUMBERNESTEDTYPE(
        PHONENUMBERTYPE('05517', '029090'),
        PHONENUMBERTYPE('71057', '223560')
    ),
    '076481805'
);

INSERT INTO PEOPLE VALUES (
    PERSONNAMETYPE('Mrs', 'Michael', 'Frankson'),
    LOCATIONTYPE('Waterloo Street', 'Cardiff', 'XM L83'),
    PHONENUMBERTYPE('01474','020660'),
    PHONENUMBERNESTEDTYPE(
        PHONENUMBERTYPE('83417', '161452'),
        PHONENUMBERTYPE('31718', '308315')
    ),
    '195222013'
);

INSERT INTO PEOPLE VALUES (
    PERSONNAMETYPE('Ms', 'Michael', 'Peterson'),
    LOCATIONTYPE('Waterloo Street', 'Swansea', 'BC X09'),
    PHONENUMBERTYPE('58637','088508'),
    PHONENUMBERNESTEDTYPE(
        PHONENUMBERTYPE('56054', '674584'),
        PHONENUMBERTYPE('16617', '648388')
    ),
    '320934178'
);