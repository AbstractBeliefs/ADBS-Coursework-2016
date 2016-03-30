import random
import string
import itertools

fnames = [
    "John",
    "Jack",
    "Michael",
    "Oliver",
    "Paul",
    "Vic",
    "Olivia",
    "Rachel",
    "Helena",
    "Cosima",
    "Alison"
]

lnames = [
    "Smith",
    "Johnson",
    "Williams",
    "Brown",
    "Frankson",
    "Peterson",
    "Hemmingway"
]
streets = [
    "Baker Street",
    "Waterloo Street",
    "Fleet Street",
    "South Row",
    "Saints Row",
    "Jackson Court",
    "Morrison Street",
    "Canal Street"
]

cities = [
    "London",
    "Manchester",
    "Leeds",
    "Glasgow",
    "Aberdeen",
    "Southampton",
    "Milton Keynes",
    "Aberdeen",
    "Cardiff",
    "Swansea"
]

def NameGenerator():
    name_gen = itertools.product(fnames, lnames)
    while True:
        title = random.choice(["Mr", "Ms", "Mrs"])
        name = name_gen.next()
        yield (title,) + name


def postcodeGenerator():
    while True:
        postcode = random.choice(string.ascii_uppercase)
        postcode += random.choice(string.ascii_uppercase)
        postcode += " "
        postcode += random.choice(string.ascii_uppercase)
        postcode += random.choice(string.digits)
        postcode += random.choice(string.digits)
        yield postcode

def AddressGenerator():
    street_gen = itertools.product(streets, cities)
    postcode_gen = postcodeGenerator()
    while True:
        yield street_gen.next() + (postcode_gen.next(),)

def PhoneGenerator():
    while True:
        area = "".join(str(random.randint(0,9)) for _ in range(5))
        local = "".join(str(random.randint(0,9)) for _ in range(6))
        yield (area, local)

def NIGenerator():
    while True:
        yield ("".join(str(random.randint(0,9)) for _ in range(9)),)

def People(number):
    names = NameGenerator()
    addresses = AddressGenerator()
    phones = PhoneGenerator()
    nis = NIGenerator()

    people_template = """
    INSERT INTO PEOPLE VALUES (
        PERSONNAMETYPE('%s', '%s', '%s'),
        LOCATIONTYPE('%s', '%s', '%s'),
        PHONENUMBERTYPE('%s','%s'),
        PHONENUMBERNESTEDTYPE(
            PHONENUMBERTYPE('%s', '%s'),
            PHONENUMBERTYPE('%s', '%s')
        ),
        '%s'
    );"""
    for _ in range(number):
        params = (
                names.next(),
                addresses.next(),
                phones.next(),
                phones.next(),
                phones.next(),
                nis.next()
        )
        params = sum(params, ())
        print people_template % params

def Employees(number):
    names = NameGenerator()
    addresses = AddressGenerator()
    phones = PhoneGenerator()
    nis = NIGenerator()

    employees_template = \
"""INSERT INTO Employees VALUES (
    PersonNameType('%s', '%s', '%s'),
    LocationType('%s', '%s', '%s'),
    PhoneNumberType('%s', '%s'),
    PHONENUMBERNESTEDTYPE(),
    '%s',

    %s,
    '%s',
    %s,
    '%s',
    '%s'
);"""
    for _ in range(number):
        params = (
                names.next(),
                addresses.next(),
                phones.next(),
                nis.next(),
                ("NULL",),
                (random.choice(["Teller", "CSA", "Manager"]),),
                ("NULL",),
                (str(random.randint(18000, 120000)),),
                ('21-Feb-2016',)
        )
        params = sum(params, ())
        print employees_template % params

def Accounts(number):
    accounts_template = \
"""INSERT INTO Accounts VALUES (
    (SELECT * FROM (SELECT ref(b) FROM Branches b ORDER BY DBMS_RANDOM.RANDOM) WHERE ROWNUM <= 1),
    (SELECT * FROM (SELECT ref(p) FROM People p ORDER BY DBMS_RANDOM.RANDOM) WHERE ROWNUM <= 1),
    %d,
    '%s',
    %f,
    %f,
    %s,
    '03-May-2001'
);"""
    for _ in range(number):
        print accounts_template % (
                random.randint(100, 10000),
                random.choice(["current", "savings"]),
                random.randint(0, 10000) + random.random()*5,
                random.random()*0.5,
                random.choice(["NULL", str(random.randint(10, 800))])
        )

if __name__ == "__main__":
    Accounts(20)
