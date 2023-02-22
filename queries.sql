--1
SELECT e.emp_no, 
  e.last_name, 
  e.first_name, 
  e.sex, 
  s.salary
FROM employees as e
INNER JOIN salaries as s ON
e.emp_no = s.emp_no

--2
SELECT  
  e.first_name, 
  e.last_name, 
  e.hire_date 
 
FROM employees as e
 WHERE (hire_date BETWEEN '1986-01-01' AND '1986-12-31')
--  WHERE (hire_date>='1986-01-01' AND hire_date<='1986-12-31')

--3
SELECT 
  dm.dept_no,
  d.dept_name,
  e.emp_no, 
  e.last_name, 
  e.first_name    
  
FROM employees as e
INNER JOIN dept_manager as dm ON
e.emp_no = dm.emp_no
INNER JOIN departments as d ON
d.dept_no = dm.dept_no
INNER JOIN dept_emp as de ON
de.emp_no = dm.emp_no

--4
SELECT 
  de.dept_no,
  e.emp_no, 
  e.last_name, 
  e.first_name,
  d.dept_name
  
FROM employees as e
INNER JOIN dept_emp as de ON
e.emp_no = de.emp_no
INNER JOIN departments as d ON
d.dept_no = de.dept_no

--5
SELECT 
  e.first_name,
  e.last_name,   
  e.sex
  
FROM employees as e
WHERE first_name = 'Hercules' AND last_name LIKE '%B%';

--6
SELECT 
  e.emp_no, 
  e.last_name, 
  e.first_name,
  d.dept_name
  
FROM employees as e
INNER JOIN dept_emp as de ON
e.emp_no = de.emp_no
INNER JOIN departments as d ON
d.dept_no = de.dept_no
WHERE d.dept_name = 'Sales'

--7
SELECT 
  e.emp_no, 
  e.last_name, 
  e.first_name,
  d.dept_name
  
FROM employees as e
INNER JOIN dept_emp as de ON
e.emp_no = de.emp_no
INNER JOIN departments as d ON
d.dept_no = de.dept_no
WHERE dept_name IN ('Sales', 'Development');

--8
SELECT 
 
  e.last_name, count(*) 
    
FROM employees as e
GROUP BY  e.last_name
ORDER BY COUNT DESC ;
