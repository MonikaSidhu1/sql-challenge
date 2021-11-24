DROP TABLE Employees
DROP TABLE departments
DROP TABLE dept_emp
DROP TABLE dept_managers
DROP TABLE salaries
DROP TABLE titles

CREATE TABLE departments (
  dept_no VARCHAR(10),
  dept_name VARCHAR(30) NOT NULL,
  PRIMARY KEY (dept_no)
);

select * from departments

CREATE TABLE Employees (
    emp_no INT   NOT NULL,
	emp_title_id VARCHAR NOT NULL,
    birth_date date   NOT NULL,
    first_name VARCHAR   NOT NULL,
    last_name VARCHAR   NOT NULL,
    sex VARCHAR(2)   NOT NULL,
    hire_date date   NOT NULL,
	PRIMARY KEY (emp_no)
);
SELECT * from Employees;

CREATE TABLE dept_emp (
	emp_no INT NOT NULL,
	dept_no VARCHAR(10) NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
    FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);
select * from dept_emp


CREATE TABLE dept_managers (
      dept_no VARCHAR (10),
       emp_no INT,
       FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
       FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

select * from dept_managers

CREATE TABLE salaries (
	emp_no BIGINT NOT NULL,
	salary BIGINT NOT NULL,
	FOREIGN KEY(emp_no) REFERENCES employees(emp_no)
);

select * from salaries

DROP TABLE titles

CREATE TABLE titles (
	title VARCHAR(20) NOT NULL,
	title_id VARCHAR(20) NOT NULL
    
);

select * from titles


