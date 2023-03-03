CREATE TABLE employees (
    emp_no integer NOT NULL PRIMARY KEY,
    emp_title_id character varying(25) NOT NULL,
    FOREIGN KEY (emp_title_id) REFERENCES titles(title_id)
    birth_date date NOT NULL,
    first_name character varying(45) NOT NULL,
    last_name character varying(45) NOT NULL,
    sex character (1) NOT NULL,
    hire_date date NOT NULL
);

CREATE TABLE titles (
    title_id character varying(10) NOT NULL PRIMARY KEY,
    FOREIGN KEY (title_id) REFERENCES employees (emp_title_id),
    title character varying(25) NOT NULL
);

CREATE TABLE departments (
    dept_no character varying(10) NOT NULL PRIMARY KEY,
    dept_name character varying(50) NOT NULL PRIMARY KEY
);

CREATE TABLE dept_emp (
    emp_no integer NOT NULL PRIMARY KEY,
    FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
    dept_no character varying(10) NOT NULL PRIMARY KEY,
    FOREIGN KEY (dept_no) REFERENCES departments (dept_no)
);

CREATE TABLE dept_manager (
    dept_no character varying(25) NOT NULL,
    FOREIGN KEY (dept_no) REFERENCES departments (dept_no),
    emp_no integer NOT NULL PRIMARY KEY,
    FOREIGN KEY (emp_no) REFERENCES employees (emp_no)
);

CREATE TABLE salaries (
    emp_no integer NOT NULL PRIMARY KEY,
    FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
    salary integer NOT NULL
);

