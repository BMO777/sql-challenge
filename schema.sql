-- DROP TABLE IF EXISTS public.departments CASCADE;
CREATE TABLE public.departments (
	
	dept_no character varying,
	dept_name character varying NOT NULL

);

-- DROP TABLE IF EXISTS public.dept_emp CASCADE;
CREATE TABLE public.dept_emp (
	
	emp_no integer,
	dept_no character varying

);

-- DROP TABLE IF EXISTS public.dept_manager CASCADE;
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
