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

INSERT INTO Employees VALUES (
    PersonNameType('Ms', 'John', 'Smith'),
    LocationType('Baker Street', 'London', 'ZK O22'),
    PhoneNumberType('13715', '774808'),
    PHONENUMBERNESTEDTYPE(),
    '976976512',

    NULL,
    'Manager',
    NULL,
    '51478',
    '21-Feb-2016'
);
INSERT INTO Employees VALUES (
    PersonNameType('Ms', 'John', 'Johnson'),
    LocationType('Baker Street', 'Manchester', 'MJ J99'),
    PhoneNumberType('87291', '592006'),
    PHONENUMBERNESTEDTYPE(),
    '364721623',

    NULL,
    'Manager',
    NULL,
    '115305',
    '21-Feb-2016'
);
INSERT INTO Employees VALUES (
    PersonNameType('Mrs', 'John', 'Williams'),
    LocationType('Baker Street', 'Leeds', 'IX I30'),
    PhoneNumberType('94354', '010325'),
    PHONENUMBERNESTEDTYPE(),
    '798215583',

    NULL,
    'CSA',
    NULL,
    '114421',
    '21-Feb-2016'
);
INSERT INTO Employees VALUES (
    PersonNameType('Mrs', 'John', 'Brown'),
    LocationType('Baker Street', 'Glasgow', 'EK Q62'),
    PhoneNumberType('97069', '422643'),
    PHONENUMBERNESTEDTYPE(),
    '279169060',

    NULL,
    'Teller',
    NULL,
    '102210',
    '21-Feb-2016'
);
INSERT INTO Employees VALUES (
    PersonNameType('Mrs', 'John', 'Frankson'),
    LocationType('Baker Street', 'Aberdeen', 'MM M71'),
    PhoneNumberType('90720', '931996'),
    PHONENUMBERNESTEDTYPE(),
    '543770061',

    NULL,
    'Manager',
    NULL,
    '57549',
    '21-Feb-2016'
);
INSERT INTO Employees VALUES (
    PersonNameType('Mrs', 'John', 'Peterson'),
    LocationType('Baker Street', 'Southampton', 'DC D95'),
    PhoneNumberType('64633', '062594'),
    PHONENUMBERNESTEDTYPE(),
    '279939237',

    NULL,
    'CSA',
    NULL,
    '73864',
    '21-Feb-2016'
);
INSERT INTO Employees VALUES (
    PersonNameType('Mr', 'John', 'Hemmingway'),
    LocationType('Baker Street', 'Milton Keynes', 'VB R25'),
    PhoneNumberType('70034', '792344'),
    PHONENUMBERNESTEDTYPE(),
    '462733473',

    NULL,
    'Teller',
    NULL,
    '35509',
    '21-Feb-2016'
);
INSERT INTO Employees VALUES (
    PersonNameType('Mr', 'Jack', 'Smith'),
    LocationType('Baker Street', 'Aberdeen', 'ZW E25'),
    PhoneNumberType('94509', '690358'),
    PHONENUMBERNESTEDTYPE(),
    '482918080',

    NULL,
    'CSA',
    NULL,
    '113046',
    '21-Feb-2016'
);
INSERT INTO Employees VALUES (
    PersonNameType('Ms', 'Jack', 'Johnson'),
    LocationType('Baker Street', 'Cardiff', 'SL O88'),
    PhoneNumberType('95118', '473714'),
    PHONENUMBERNESTEDTYPE(),
    '984387726',

    NULL,
    'Manager',
    NULL,
    '92971',
    '21-Feb-2016'
);
INSERT INTO Employees VALUES (
    PersonNameType('Mr', 'Jack', 'Williams'),
    LocationType('Baker Street', 'Swansea', 'KS L72'),
    PhoneNumberType('39822', '095568'),
    PHONENUMBERNESTEDTYPE(),
    '394881246',

    NULL,
    'Teller',
    NULL,
    '71396',
    '21-Feb-2016'
);
INSERT INTO Employees VALUES (
    PersonNameType('Ms', 'Jack', 'Brown'),
    LocationType('Waterloo Street', 'London', 'DW G43'),
    PhoneNumberType('13699', '248799'),
    PHONENUMBERNESTEDTYPE(),
    '761471778',

    NULL,
    'Teller',
    NULL,
    '65227',
    '21-Feb-2016'
);
INSERT INTO Employees VALUES (
    PersonNameType('Mrs', 'Jack', 'Frankson'),
    LocationType('Waterloo Street', 'Manchester', 'MK B98'),
    PhoneNumberType('94750', '113432'),
    PHONENUMBERNESTEDTYPE(),
    '423923009',

    NULL,
    'Manager',
    NULL,
    '113387',
    '21-Feb-2016'
);
INSERT INTO Employees VALUES (
    PersonNameType('Mrs', 'Jack', 'Peterson'),
    LocationType('Waterloo Street', 'Leeds', 'BF J26'),
    PhoneNumberType('97088', '238410'),
    PHONENUMBERNESTEDTYPE(),
    '750800098',

    NULL,
    'Teller',
    NULL,
    '31266',
    '21-Feb-2016'
);
INSERT INTO Employees VALUES (
    PersonNameType('Ms', 'Jack', 'Hemmingway'),
    LocationType('Waterloo Street', 'Glasgow', 'KQ V95'),
    PhoneNumberType('08698', '552926'),
    PHONENUMBERNESTEDTYPE(),
    '563573292',

    NULL,
    'Teller',
    NULL,
    '20888',
    '21-Feb-2016'
);
INSERT INTO Employees VALUES (
    PersonNameType('Mr', 'Michael', 'Smith'),
    LocationType('Waterloo Street', 'Aberdeen', 'YJ W68'),
    PhoneNumberType('18660', '338765'),
    PHONENUMBERNESTEDTYPE(),
    '001835856',

    NULL,
    'Manager',
    NULL,
    '86187',
    '21-Feb-2016'
);
INSERT INTO Employees VALUES (
    PersonNameType('Ms', 'Michael', 'Johnson'),
    LocationType('Waterloo Street', 'Southampton', 'QO O82'),
    PhoneNumberType('65805', '249225'),
    PHONENUMBERNESTEDTYPE(),
    '423526555',

    NULL,
    'Teller',
    NULL,
    '109999',
    '21-Feb-2016'
);
INSERT INTO Employees VALUES (
    PersonNameType('Mr', 'Michael', 'Williams'),
    LocationType('Waterloo Street', 'Milton Keynes', 'ZB A78'),
    PhoneNumberType('99204', '128776'),
    PHONENUMBERNESTEDTYPE(),
    '271820536',

    NULL,
    'CSA',
    NULL,
    '50819',
    '21-Feb-2016'
);
INSERT INTO Employees VALUES (
    PersonNameType('Ms', 'Michael', 'Brown'),
    LocationType('Waterloo Street', 'Aberdeen', 'MX R36'),
    PhoneNumberType('52005', '839623'),
    PHONENUMBERNESTEDTYPE(),
    '404190905',

    NULL,
    'CSA',
    NULL,
    '62100',
    '21-Feb-2016'
);
INSERT INTO Employees VALUES (
    PersonNameType('Mr', 'Michael', 'Frankson'),
    LocationType('Waterloo Street', 'Cardiff', 'QO U72'),
    PhoneNumberType('96084', '577774'),
    PHONENUMBERNESTEDTYPE(),
    '584775804',

    NULL,
    'CSA',
    NULL,
    '93810',
    '21-Feb-2016'
);
INSERT INTO Employees VALUES (
    PersonNameType('Mrs', 'Michael', 'Peterson'),
    LocationType('Waterloo Street', 'Swansea', 'AO S31'),
    PhoneNumberType('38355', '055009'),
    PHONENUMBERNESTEDTYPE(),
    '380379170',

    NULL,
    'Teller',
    NULL,
    '96500',
    '21-Feb-2016'
);
INSERT INTO Accounts VALUES (
    (SELECT * FROM (SELECT ref(b) FROM Branches b ORDER BY DBMS_RANDOM.RANDOM) WHERE ROWNUM <= 1),
    6222,
    'savings',
    7197.188458,
    0.086133,
    599,
    '03-May-2001'
);
INSERT INTO Accounts VALUES (
    (SELECT * FROM (SELECT ref(b) FROM Branches b ORDER BY DBMS_RANDOM.RANDOM) WHERE ROWNUM <= 1),
    5236,
    'current',
    5661.720140,
    0.277561,
    NULL,
    '03-May-2001'
);
INSERT INTO Accounts VALUES (
    (SELECT * FROM (SELECT ref(b) FROM Branches b ORDER BY DBMS_RANDOM.RANDOM) WHERE ROWNUM <= 1),
    4303,
    'current',
    9292.137749,
    0.495143,
    240,
    '03-May-2001'
);
INSERT INTO Accounts VALUES (
    (SELECT * FROM (SELECT ref(b) FROM Branches b ORDER BY DBMS_RANDOM.RANDOM) WHERE ROWNUM <= 1),
    1810,
    'savings',
    1238.174403,
    0.215275,
    203,
    '03-May-2001'
);
INSERT INTO Accounts VALUES (
    (SELECT * FROM (SELECT ref(b) FROM Branches b ORDER BY DBMS_RANDOM.RANDOM) WHERE ROWNUM <= 1),
    3682,
    'current',
    5299.051185,
    0.401449,
    700,
    '03-May-2001'
);
INSERT INTO Accounts VALUES (
    (SELECT * FROM (SELECT ref(b) FROM Branches b ORDER BY DBMS_RANDOM.RANDOM) WHERE ROWNUM <= 1),
    7856,
    'savings',
    9087.973986,
    0.365588,
    489,
    '03-May-2001'
);
INSERT INTO Accounts VALUES (
    (SELECT * FROM (SELECT ref(b) FROM Branches b ORDER BY DBMS_RANDOM.RANDOM) WHERE ROWNUM <= 1),
    758,
    'current',
    778.904570,
    0.088086,
    71,
    '03-May-2001'
);
INSERT INTO Accounts VALUES (
    (SELECT * FROM (SELECT ref(b) FROM Branches b ORDER BY DBMS_RANDOM.RANDOM) WHERE ROWNUM <= 1),
    5029,
    'current',
    403.107433,
    0.044643,
    NULL,
    '03-May-2001'
);
INSERT INTO Accounts VALUES (
    (SELECT * FROM (SELECT ref(b) FROM Branches b ORDER BY DBMS_RANDOM.RANDOM) WHERE ROWNUM <= 1),
    8126,
    'current',
    8764.238197,
    0.486755,
    NULL,
    '03-May-2001'
);
INSERT INTO Accounts VALUES (
    (SELECT * FROM (SELECT ref(b) FROM Branches b ORDER BY DBMS_RANDOM.RANDOM) WHERE ROWNUM <= 1),
    310,
    'current',
    3032.019998,
    0.453015,
    238,
    '03-May-2001'
);
INSERT INTO Accounts VALUES (
    (SELECT * FROM (SELECT ref(b) FROM Branches b ORDER BY DBMS_RANDOM.RANDOM) WHERE ROWNUM <= 1),
    2060,
    'savings',
    657.215197,
    0.101463,
    55,
    '03-May-2001'
);
INSERT INTO Accounts VALUES (
    (SELECT * FROM (SELECT ref(b) FROM Branches b ORDER BY DBMS_RANDOM.RANDOM) WHERE ROWNUM <= 1),
    9384,
    'savings',
    2630.297366,
    0.115210,
    NULL,
    '03-May-2001'
);
INSERT INTO Accounts VALUES (
    (SELECT * FROM (SELECT ref(b) FROM Branches b ORDER BY DBMS_RANDOM.RANDOM) WHERE ROWNUM <= 1),
    9053,
    'savings',
    7426.029980,
    0.413003,
    NULL,
    '03-May-2001'
);
INSERT INTO Accounts VALUES (
    (SELECT * FROM (SELECT ref(b) FROM Branches b ORDER BY DBMS_RANDOM.RANDOM) WHERE ROWNUM <= 1),
    5154,
    'savings',
    3158.504548,
    0.274351,
    600,
    '03-May-2001'
);
INSERT INTO Accounts VALUES (
    (SELECT * FROM (SELECT ref(b) FROM Branches b ORDER BY DBMS_RANDOM.RANDOM) WHERE ROWNUM <= 1),
    5305,
    'current',
    4654.753195,
    0.369703,
    NULL,
    '03-May-2001'
);
INSERT INTO Accounts VALUES (
    (SELECT * FROM (SELECT ref(b) FROM Branches b ORDER BY DBMS_RANDOM.RANDOM) WHERE ROWNUM <= 1),
    5049,
    'savings',
    2467.529644,
    0.386490,
    122,
    '03-May-2001'
);
INSERT INTO Accounts VALUES (
    (SELECT * FROM (SELECT ref(b) FROM Branches b ORDER BY DBMS_RANDOM.RANDOM) WHERE ROWNUM <= 1),
    3093,
    'current',
    5504.600334,
    0.111764,
    242,
    '03-May-2001'
);
INSERT INTO Accounts VALUES (
    (SELECT * FROM (SELECT ref(b) FROM Branches b ORDER BY DBMS_RANDOM.RANDOM) WHERE ROWNUM <= 1),
    1909,
    'current',
    6861.852688,
    0.082102,
    NULL,
    '03-May-2001'
);
INSERT INTO Accounts VALUES (
    (SELECT * FROM (SELECT ref(b) FROM Branches b ORDER BY DBMS_RANDOM.RANDOM) WHERE ROWNUM <= 1),
    8353,
    'savings',
    1608.579945,
    0.301371,
    NULL,
    '03-May-2001'
);
INSERT INTO Accounts VALUES (
    (SELECT * FROM (SELECT ref(b) FROM Branches b ORDER BY DBMS_RANDOM.RANDOM) WHERE ROWNUM <= 1),
    1552,
    'current',
    6912.537335,
    0.367838,
    35,
    '03-May-2001'
);
INSERT INTO AccountCustomerLinks VALUES (
    (SELECT * FROM (SELECT ref(a) FROM Accounts a ORDER BY DBMS_RANDOM.RANDOM) WHERE ROWNUM <= 1),
    (SELECT * FROM (SELECT ref(p) FROM People p ORDER BY DBMS_RANDOM.RANDOM) WHERE ROWNUM <= 1)
);
INSERT INTO AccountCustomerLinks VALUES (
    (SELECT * FROM (SELECT ref(a) FROM Accounts a ORDER BY DBMS_RANDOM.RANDOM) WHERE ROWNUM <= 1),
    (SELECT * FROM (SELECT ref(p) FROM People p ORDER BY DBMS_RANDOM.RANDOM) WHERE ROWNUM <= 1)
);
INSERT INTO AccountCustomerLinks VALUES (
    (SELECT * FROM (SELECT ref(a) FROM Accounts a ORDER BY DBMS_RANDOM.RANDOM) WHERE ROWNUM <= 1),
    (SELECT * FROM (SELECT ref(p) FROM People p ORDER BY DBMS_RANDOM.RANDOM) WHERE ROWNUM <= 1)
);
INSERT INTO AccountCustomerLinks VALUES (
    (SELECT * FROM (SELECT ref(a) FROM Accounts a ORDER BY DBMS_RANDOM.RANDOM) WHERE ROWNUM <= 1),
    (SELECT * FROM (SELECT ref(p) FROM People p ORDER BY DBMS_RANDOM.RANDOM) WHERE ROWNUM <= 1)
);
INSERT INTO AccountCustomerLinks VALUES (
    (SELECT * FROM (SELECT ref(a) FROM Accounts a ORDER BY DBMS_RANDOM.RANDOM) WHERE ROWNUM <= 1),
    (SELECT * FROM (SELECT ref(p) FROM People p ORDER BY DBMS_RANDOM.RANDOM) WHERE ROWNUM <= 1)
);
INSERT INTO AccountCustomerLinks VALUES (
    (SELECT * FROM (SELECT ref(a) FROM Accounts a ORDER BY DBMS_RANDOM.RANDOM) WHERE ROWNUM <= 1),
    (SELECT * FROM (SELECT ref(p) FROM People p ORDER BY DBMS_RANDOM.RANDOM) WHERE ROWNUM <= 1)
);
INSERT INTO AccountCustomerLinks VALUES (
    (SELECT * FROM (SELECT ref(a) FROM Accounts a ORDER BY DBMS_RANDOM.RANDOM) WHERE ROWNUM <= 1),
    (SELECT * FROM (SELECT ref(p) FROM People p ORDER BY DBMS_RANDOM.RANDOM) WHERE ROWNUM <= 1)
);
INSERT INTO AccountCustomerLinks VALUES (
    (SELECT * FROM (SELECT ref(a) FROM Accounts a ORDER BY DBMS_RANDOM.RANDOM) WHERE ROWNUM <= 1),
    (SELECT * FROM (SELECT ref(p) FROM People p ORDER BY DBMS_RANDOM.RANDOM) WHERE ROWNUM <= 1)
);
INSERT INTO AccountCustomerLinks VALUES (
    (SELECT * FROM (SELECT ref(a) FROM Accounts a ORDER BY DBMS_RANDOM.RANDOM) WHERE ROWNUM <= 1),
    (SELECT * FROM (SELECT ref(p) FROM People p ORDER BY DBMS_RANDOM.RANDOM) WHERE ROWNUM <= 1)
);
INSERT INTO AccountCustomerLinks VALUES (
    (SELECT * FROM (SELECT ref(a) FROM Accounts a ORDER BY DBMS_RANDOM.RANDOM) WHERE ROWNUM <= 1),
    (SELECT * FROM (SELECT ref(p) FROM People p ORDER BY DBMS_RANDOM.RANDOM) WHERE ROWNUM <= 1)
);
INSERT INTO AccountCustomerLinks VALUES (
    (SELECT * FROM (SELECT ref(a) FROM Accounts a ORDER BY DBMS_RANDOM.RANDOM) WHERE ROWNUM <= 1),
    (SELECT * FROM (SELECT ref(p) FROM People p ORDER BY DBMS_RANDOM.RANDOM) WHERE ROWNUM <= 1)
);
INSERT INTO AccountCustomerLinks VALUES (
    (SELECT * FROM (SELECT ref(a) FROM Accounts a ORDER BY DBMS_RANDOM.RANDOM) WHERE ROWNUM <= 1),
    (SELECT * FROM (SELECT ref(p) FROM People p ORDER BY DBMS_RANDOM.RANDOM) WHERE ROWNUM <= 1)
);
INSERT INTO AccountCustomerLinks VALUES (
    (SELECT * FROM (SELECT ref(a) FROM Accounts a ORDER BY DBMS_RANDOM.RANDOM) WHERE ROWNUM <= 1),
    (SELECT * FROM (SELECT ref(p) FROM People p ORDER BY DBMS_RANDOM.RANDOM) WHERE ROWNUM <= 1)
);
INSERT INTO AccountCustomerLinks VALUES (
    (SELECT * FROM (SELECT ref(a) FROM Accounts a ORDER BY DBMS_RANDOM.RANDOM) WHERE ROWNUM <= 1),
    (SELECT * FROM (SELECT ref(p) FROM People p ORDER BY DBMS_RANDOM.RANDOM) WHERE ROWNUM <= 1)
);
INSERT INTO AccountCustomerLinks VALUES (
    (SELECT * FROM (SELECT ref(a) FROM Accounts a ORDER BY DBMS_RANDOM.RANDOM) WHERE ROWNUM <= 1),
    (SELECT * FROM (SELECT ref(p) FROM People p ORDER BY DBMS_RANDOM.RANDOM) WHERE ROWNUM <= 1)
);
INSERT INTO AccountCustomerLinks VALUES (
    (SELECT * FROM (SELECT ref(a) FROM Accounts a ORDER BY DBMS_RANDOM.RANDOM) WHERE ROWNUM <= 1),
    (SELECT * FROM (SELECT ref(p) FROM People p ORDER BY DBMS_RANDOM.RANDOM) WHERE ROWNUM <= 1)
);
INSERT INTO AccountCustomerLinks VALUES (
    (SELECT * FROM (SELECT ref(a) FROM Accounts a ORDER BY DBMS_RANDOM.RANDOM) WHERE ROWNUM <= 1),
    (SELECT * FROM (SELECT ref(p) FROM People p ORDER BY DBMS_RANDOM.RANDOM) WHERE ROWNUM <= 1)
);
INSERT INTO AccountCustomerLinks VALUES (
    (SELECT * FROM (SELECT ref(a) FROM Accounts a ORDER BY DBMS_RANDOM.RANDOM) WHERE ROWNUM <= 1),
    (SELECT * FROM (SELECT ref(p) FROM People p ORDER BY DBMS_RANDOM.RANDOM) WHERE ROWNUM <= 1)
);
INSERT INTO AccountCustomerLinks VALUES (
    (SELECT * FROM (SELECT ref(a) FROM Accounts a ORDER BY DBMS_RANDOM.RANDOM) WHERE ROWNUM <= 1),
    (SELECT * FROM (SELECT ref(p) FROM People p ORDER BY DBMS_RANDOM.RANDOM) WHERE ROWNUM <= 1)
);
INSERT INTO AccountCustomerLinks VALUES (
    (SELECT * FROM (SELECT ref(a) FROM Accounts a ORDER BY DBMS_RANDOM.RANDOM) WHERE ROWNUM <= 1),
    (SELECT * FROM (SELECT ref(p) FROM People p ORDER BY DBMS_RANDOM.RANDOM) WHERE ROWNUM <= 1)
);
