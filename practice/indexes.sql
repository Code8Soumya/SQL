SHOW DATABASES;
CREATE DATABASE test;
USE test;

CREATE TABLE user (
	name VARCHAR(100),
    age INT
);

INSERT INTO user (name, age) VALUES
('Michael Smith', 28),
('Jennifer Garcia', 35),
('Christopher Johnson', 42),
('Jessica Miller', 22),
('Matthew Davis', 31),
('Amanda Rodriguez', 28),
('David Martinez', 55),
('Sarah Brown', 42),
('James Wilson', 31),
('Emily Anderson', 25),
('Robert Taylor', 38),
('Megan Thomas', 22),
('John Hernandez', 45),
('Melissa Moore', 29),
('Joseph Martin', 33),
('Stephanie Jackson', 40),
('Daniel Lee', 50),
('Lauren Perez', 28),
('William Thompson', 35),
('Nicole White', 42),
('Michael Smith', 28), -- Duplicate
('Ashley Harris', 26),
('Joshua Sanchez', 39),
('Samantha Clark', 21),
('Anthony Lewis', 48),
('Elizabeth Robinson', 32),
('David Martinez', 55), -- Duplicate
('Christopher Walker', 27),
('Jessica Hall', 36),
('Matthew Allen', 41),
('Amanda Young', 24),
('James King', 52),
('Emily Wright', 30),
('Robert Scott', 47),
('Megan Green', 22), -- Duplicate
('John Baker', 34),
('Melissa Adams', 29), -- Duplicate
('Joseph Nelson', 44),
('Stephanie Carter', 37),
('Daniel Mitchell', 58),
('Lauren Roberts', 26),
('William Turner', 31),
('Nicole Phillips', 43),
('Andrew Campbell', 28),
('Jennifer Parker', 35), -- Duplicate
('Christopher Evans', 49),
('Jessica Edwards', 23),
('Matthew Collins', 33),
('Amanda Stewart', 28), -- Duplicate
('David Sanchez', 51),
('Sarah Morris', 46),
('James Rogers', 30),
('Emily Reed', 25),
('Robert Cook', 38),
('Megan Morgan', 27),
('John Bell', 42),
('Melissa Murphy', 32),
('Joseph Bailey', 39),
('Stephanie Rivera', 29),
('Daniel Cooper', 53),
('Lauren Richardson', 24),
('William Cox', 36),
('Nicole Howard', 41),
('Andrew Ward', 28),
('Michael Smith', 28), -- Duplicate
('Christopher Johnson', 42), -- Duplicate
('Jessica Miller', 22), -- Duplicate
('Matthew Davis', 31), -- Duplicate
('Amanda Rodriguez', 28), -- Duplicate
('David Martinez', 55), -- Duplicate
('Sarah Brown', 42), -- Duplicate
('James Wilson', 31), -- Duplicate
('Emily Anderson', 25), -- Duplicate
('Robert Taylor', 38), -- Duplicate
('Megan Thomas', 22), -- Duplicate
('John Hernandez', 45), -- Duplicate
('Melissa Moore', 29), -- Duplicate
('Joseph Martin', 33), -- Duplicate
('Stephanie Jackson', 40), -- Duplicate
('Daniel Lee', 50), -- Duplicate
('Lauren Perez', 28), -- Duplicate
('William Thompson', 35), -- Duplicate
('Nicole White', 42), -- Duplicate
('Andrew King', 29),
('Samantha Hill', 34),
('Joshua Scott', 47),
('Ashley Green', 21),
('Anthony Adams', 55),
('Elizabeth Baker', 30),
('Christopher Nelson', 38),
('Jessica Carter', 26),
('Matthew Mitchell', 43),
('Amanda Roberts', 31),
('David Turner', 50),
('Sarah Phillips', 27),
('James Campbell', 36),
('Emily Parker', 22),
('Robert Evans', 48),
('Megan Edwards', 25),
('John Collins', 39),
('Melissa Stewart', 33);

EXPLAIN SELECT * FROM user WHERE name = 'Sarah Brown';
SELECT * FROM user WHERE name = 'Sarah Brown';

CREATE INDEX name_idx ON user(name);
EXPLAIN SELECT * FROM user WHERE name = 'Sarah Brown';
SELECT * FROM user WHERE name = 'Sarah Brown';

SHOW TABLES;
DROP TABLE user;
DROP DATABASE test;



































