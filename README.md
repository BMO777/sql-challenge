# sql-challenge

Tables were created in a postgresql database using titles from csv files in data folder before creating the schema.sql file which may now be used to create tables where data from csv files may be imported.

Csv files in aforementioned folder were imported to postgresql database  appending to the tables referencing employees, titles, salaries, departments, department managers, and department employees.


The queries.sql file uses sql code to satisfy the following queries to display:

	-List the employee number, last name, first name, sex, and salary of each employee.

	-List the first name, last name, and hire date for the employees who were hired in 1986.

	-List the manager of each department along with their department number, department name, employee number, last name, and first name.

	-List the department number for each employee along with that employee’s employee number, last name, first name, and department name.

	-List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.

	-List each employee in the Sales department, including their employee number, last name, and first name.

	-List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.

	-List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name). 


There are primary keys indicated on the schema file on overy table and a composite key for two tables, the department table, and the department employee table.
