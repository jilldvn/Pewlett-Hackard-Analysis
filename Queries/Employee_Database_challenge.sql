--Retrieve the emp_no, first_name, and last_name columns from the Employees table and the title, from_date, and to_date columns from the Titles table.
--Create a new table using the INTO clause. Join both tables on the primary key.
--Filter the data on the birth_date column to retrieve the employees who were born between 1952 and 1955. Then, order by the employee number.
--Export the Retirement Titles table from the previous step as retirement_titles.csv and save it to your Data folder in the Pewlett-Hackard-Analysis folder.

Select  e.emp_no, e.first_name, e.last_name, e.birth_date, tt.title, tt.from_date, tt.to_date
Into retirement_titles
from employees as e
inner join titles as tt
on e.emp_no = tt.emp_no
where (e.birth_date between '1952-01-01' And '1955-12-31')
Order by e.emp_no;

Select* from retirement_titles


--Retrieve the employee number, first and last name, and title columns from the Retirement Titles table.
--These columns will be in the new table that will hold the most recent title of each employee.
--Use the DISTINCT ON statement to retrieve the first occurrence of the employee number for each set of rows defined by the ON () clause.
--Exclude those employees that have already left the company by filtering on to_date to keep only those dates that are equal to '9999-01-01'.
--Create a Unique Titles table using the INTO clause.
--Sort the Unique Titles table in ascending order by the employee number and descending order by the last date (i.e., to_date) of the most recent title.
-- Use Dictinct with Orderby to remove duplicate rows
SELECT DISTINCT ON (emp_no) emp_no,
first_name,
last_name,
title
INTO unique_titles
FROM retirement_titles
WHERE (to_date='9999-01-01')
ORDER BY emp_no, from_date DESC;

Select* from unique_titles

--Write another query in the Employee_Database_challenge.sql file to retrieve the number of employees by their most recent job title who are about to retire.
--First, retrieve the number of titles from the Unique Titles table.
--Then, create a Retiring Titles table to hold the required information.
--Group the table by title, then sort the count column in descending order.
Select count(ut.title) as counts, ut.title
Into retiring_title
from unique_titles as ut
group by ut.title
Order by counts DESC;

Select * from retiring_title

--Retrieve the emp_no, first_name, last_name, and birth_date columns from the Employees table.
--Retrieve the from_date and to_date columns from the Department Employee table.
--Retrieve the title column from the Titles table.
--Use a DISTINCT ON statement to retrieve the first occurrence of the employee number for each set of rows defined by the ON () clause.
--Create a new table using the INTO clause.
--Join the Employees and the Department Employee tables on the primary key.
--Join the Employees and the Titles tables on the primary key.
--Filter the data on the to_date column to all the current employees, then filter the data on the birth_date columns to get all the employees whose birth dates are between January 1, 1965 and December 31, 1965.
--Order the table by the employee number.
Select e.emp_no, e.first_name, e.last_name, e.birth_date,
        de.from_date, de.to_date, tt.title
INTO mentorship_eligibilty
From employees as e
Join dept_emp as de
on e.emp_no = de.emp_no;
Join titles as tt
on e.emp_no = tt.emp_no
Where (e.birth_date between '1965-01-01' and '1965-12-31') AND (de.to_date='9999-01-01')
Order by e.emp_no;

Select * from mentorship_eligibilty