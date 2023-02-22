-- DROP TABLE IF EXISTS departments CASCADE;
CREATE TABLE departments (
	
	dept_no character varying,
	dept_name character varying NOT NULL

);

-- DROP TABLE IF EXISTS dept_emp CASCADE;
CREATE TABLE dept_emp (
	
	emp_no integer,
	dept_no character varying

);

-- DROP TABLE IF EXISTS dept_manager CASCADE;
CREATE TABLE dept_manager (
	
	dept_no character varying,
	emp_no integer

);

-- DROP TABLE IF EXISTS employees CASCADE;
CREATE TABLE employees (
	
	emp_no integer,
	emp_title_id character varying,
	birth_date date,
	first_name character varying,
	last_name character varying,
	sex character(1),
	hire_date date

);
-- DROP TABLE IF EXISTS salaries CASCADE;
CREATE TABLE salaries (
	
	emp_no integer NOT NULL,
	salary integer

);

-- DROP TABLE IF EXISTS titles CASCADE;
CREATE TABLE titles (
	
	title_id character varying NOT NULL,
	title character varying NOT NULL

);
