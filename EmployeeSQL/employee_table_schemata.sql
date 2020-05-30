DROP TABLE IF EXISTS departments;
DROP TABLE IF EXISTS dept_emp;
DROP TABLE IF EXISTS dept_manager;
DROP TABLE IF EXISTS employees;
DROP TABLE IF EXISTS titles;
DROP TABLE IF EXISTS salaries;

CREATE TABLE departments(
	dept_no TEXT PRIMARY KEY NOT NULL,
	dept_name TEXT NOT NULL
);
	
CREATE TABLE employees(
	emp_no INT PRIMARY KEY NOT NULL,
	birth_date DATE NOT NULL,
	first_name TEXT NOT NULL,
	last_name TEXT NOT NULL,
	gender TEXT NOT NULL,
	hire_date DATE NOT NULL
);

CREATE TABLE dept_emp(
	dept_no TEXT NOT NULL,
	emp_no INT NOT NULL,
	from_date DATE NOT NULL,
	to_date DATE NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments (dept_no)
);

CREATE TABLE dept_manager(
	dept_no TEXT NOT NULL,
	emp_no INT NOT NULL,
	from_date DATE NOT NULL,
	to_date DATE NOT NULL,
	FOREIGN KEY (dept_no) REFERENCES departments (dept_no),
	FOREIGN KEY (emp_no) REFERENCES employees (emp_no)
);

CREATE TABLE titles(
	emp_no INT NOT NULL,
	title TEXT NOT NULL,
	from_date DATE NOT NULL,
	to_date DATE NOT NULL
);

CREATE TABLE salaries(
	emp_no INT NOT NULL,
	salary INT NOT NULL,
	from_date DATE NOT NULL,
	to_date DATE NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees (emp_no)
);