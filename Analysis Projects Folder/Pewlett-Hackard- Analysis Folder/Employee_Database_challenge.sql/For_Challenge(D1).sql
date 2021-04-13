-- Deliverable 1 
SELECT emp_no, first_name, last_name, birth_date
INTO temp_1
FROM employees;

SELECT * FROM temp_1;

SELECT title, from_date, to_date, emp_no
INTO temp_2
FROM titles;

-- Joining temp_1 and temp_2 tables (emp_no is primary key)
SELECT temp_1.emp_no,
	temp_1.first_name,
	temp_1.last_name,
	temp_1.birth_date,
	temp_2.title,
	temp_2.from_date,
	temp_2.to_date
INTO Retirement_Tables
FROM temp_1
INNER JOIN temp_2
ON temp_1.emp_no = temp_2.emp_no
WHERE temp_1.birth_date BETWEEN '1952-01-01' AND '1955-12-31';

-- Use Dictinct with Orderby to remove duplicate rows
SELECT DISTINCT ON (emp_no) emp_no,
	first_name,
	last_name,
	title
INTO Unique_Titles
FROM retirement_tables
ORDER BY emp_no, to_date DESC;


-- Joining temp_1 and temp_2 tables (emp_no is primary key)
SELECT

SELECT temp_1.emp_no,
	temp_1.first_name,
	temp_1.last_name,
	temp_2.title
FROM temp_1
INNER JOIN temp_2
ON temp_1.emp_no = temp_2.emp_no
WHERE temp_1.birth_date BETWEEN '1952-01-01' AND '1955-12-31';

SELECT COUNT(title), title 
INTO retiring_titles 
FROM unique_titles
GROUP BY title
ORDER BY count DESC;