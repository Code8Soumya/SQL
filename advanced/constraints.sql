USE book_shop;

CREATE TABLE contacts(
	name VARCHAR(100) NOT NULL,
    phone VARCHAR(15) NOT NULL UNIQUE
);

SELECT * FROM contacts;
INSERT INTO contacts(name, phone) VALUES('soumya', '9926356256');
INSERT INTO contacts(name, phone) VALUES('soumya', '9926356256');
DROP TABLE contacts;

CREATE TABLE contacts (
	name VARCHAR(100) NOT NULL,
    age INT CHECK(age > 0)
);

SELECT * FROM contacts;
INSERT INTO contacts(name, age) values('soumya', '20');
INSERT INTO contacts(name, age) values('soumya', '-20');
DROP TABLE contacts;

CREATE TABLE contacts(
	name VARCHAR(100),
    age INT,
    CONSTRAINT age_over_18 CHECK (age > 18)
);

SELECT * FROM contacts;
INSERT INTO contacts(name, age) values('soumya', '19');
INSERT INTO contacts(name, age) values('soumya', '-22');
DROP TABLE contacts;

CREATE TABLE companies(
	name VARCHAR(100) NOT NULL,
    address VARCHAR(500) NOT NULL,
    CONSTRAINT name_address UNIQUE(name, address)
);

SELECT * FROM companies;
INSERT INTO companies(name, address) VALUES('honda', 'bbsr');
INSERT INTO companies(name, address) VALUES('honda', 'rkl');
INSERT INTO companies(name, address) VALUES('honda', 'rkl');
DROP TABLE companies;













































































































































