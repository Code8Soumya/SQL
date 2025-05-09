CREATE DATABASE my_data;
USE my_data;

CREATE TABLE employees (
    emp_no INT PRIMARY KEY AUTO_INCREMENT,
    department VARCHAR(20),
    salary INT
);
 
INSERT INTO employees (department, salary) VALUES
('engineering', 80000),
('engineering', 69000),
('engineering', 70000),
('engineering', 103000),
('engineering', 67000),
('engineering', 89000),
('engineering', 91000),
('sales', 59000),
('sales', 70000),
('sales', 159000),
('sales', 72000),
('sales', 60000),
('sales', 61000),
('sales', 61000),
('customer service', 38000),
('customer service', 45000),
('customer service', 61000),
('customer service', 40000),
('customer service', 31000),
('customer service', 56000),
('customer service', 55000);

SELECT * FROM employees;

SELECT department, AVG(salary) AS average_salary FROM employees GROUP BY department;

SELECT AVG(salary) OVER() AS average_salary FROM employees;

SELECT department, AVG(salary) OVER() AS average_salary FROM employees;

SELECT department, AVG(salary) OVER(PARTITION BY department) AS average_salary FROM employees;

SELECT 
	department, 
    AVG(salary) OVER(PARTITION BY department) AS department_avg,
	AVG(salary) OVER(PARTITION BY department) AS company_avg
FROM 
	employees;

SELECT 
	emp_no,
	department, 
    SUM(salary) OVER(PARTITION BY department) AS total_dept_salary,
	SUM(salary) OVER(PARTITION BY department ORDER BY salary) AS rolling_dept_salary
FROM 
	employees;
    
SELECT 
	emp_no,
	department, 
	RANK() OVER(ORDER BY salary DESC) as overall_salary_rank
FROM 
	employees;
    
SELECT 
	emp_no,
	department, 
    salary,
	RANK() OVER(PARTITION BY department ORDER BY salary DESC) as dept_salary_rank,
    RANK() OVER(ORDER BY salary DESC) as overall_salary_rank
FROM
	employees
ORDER BY
	department;
    
SELECT 
	emp_no,
	department, 
    salary,
	RANK() OVER(PARTITION BY department ORDER BY salary DESC) as dept_salary_rank,
    ROW_NUMBER() OVER(PARTITION BY department ORDER BY salary DESC) as dept_salary_row_number,
	DENSE_RANK() OVER(PARTITION BY department ORDER BY salary DESC) as dept_salary_dense_rank,
    RANK() OVER(ORDER BY salary DESC) as overall_salary_rank
FROM
	employees
ORDER BY
	department;
    
SELECT 
	emp_no,
	department, 
    salary,
	NTILE(4) OVER(ORDER BY salary DESC) AS salary_quartile
FROM
	employees;
    
SELECT 
	emp_no,
	department, 
    salary,
    NTH_VALUE(emp_no, 1) OVER(PARTITION BY department ORDER BY salary DESC) AS highest_paid_in_dept,
	FIRST_VALUE(emp_no) OVER(ORDER BY salary DESC) AS highest_paid_in_company
FROM
	employees;
    
SELECT 
	emp_no,
	department, 
    salary,
	LAG(salary) OVER(ORDER BY salary DESC),
    salary - LAG(salary, 2) OVER(ORDER BY salary DESC),
    LEAD(salary) OVER(ORDER BY salary DESC),
	salary - LEAD(salary) OVER(ORDER BY salary DESC),
    salary - LAG(salary, 2) OVER(PARTITION BY department ORDER BY salary DESC)
FROM
	employees;
    
DROP DATABASE my_data;


































































