SELECT DISTINCT ON (emp.emp_no) emp.emp_no,
	emp.first_name,
	emp.last_name,
	emp.birth_date,
	de.from_date,
	de.to_date,
	ti.title
INTO Mentorship_Eligibility
FROM employees as emp
INNER JOIN dept_emp as de
ON emp.emp_no = de.emp_no
INNER JOIN titles as ti
ON emp.emp_no = ti.emp_no
WHERE de.to_date = '9999-01-01' AND emp.birth_date BETWEEN '1965-01-01' AND '1965-12-31'
ORDER BY emp.emp_no;

SELECT * FROM mentorship_eligibility;
