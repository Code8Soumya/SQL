use mydata;

CREATE TABLE Employees(
	id INT AUTO_INCREMENT PRIMARY KEY,
    last_name VARCHAR(100) NOT NULL,
    first_name VARCHAR(100) NOT NULL,
    middle_name VARCHAR(100),
    age INT NOT NULL,
    current_status VARCHAR(200) NOT NULL DEFAULT 'employed'
);

-- DESC Employees;

INSERT INTO Employees(last_name, first_name, age)
VALUES ('senapati', 'soumya', '35');

SELECT * FROM Employees;