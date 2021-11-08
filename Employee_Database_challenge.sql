DROP TABLE retirement_titles;

/*Create retirement_titles table*/
SELECT e.emp_no,
	e.first_name,
	e.last_name,
	e.birth_date,
	ti.title,
	ti.from_date,
	ti.to_date
INTO retirement_titles
FROM employees AS e
JOIN titles as ti
	ON (e.emp_no=ti.emp_no)
WHERE (e.birth_date >= '1952-01-01' AND e.birth_date <= '1955-12-31')
ORDER BY e.emp_no;

DROP TABLE unique_titles;

/*Create table of distinct titles retiring in the next three years*/
SELECT DISTINCT ON (rt.emp_no)
	rt.emp_no,
	rt.first_name,
	rt.last_name,
	rt.title,
	rt.to_date
INTO unique_titles
FROM retirement_titles AS rt
ORDER BY rt.emp_no DESC;

SELECT * FROM unique_titles;

DROP TABLE retiring_titles;

SELECT COUNT (first_name), title
INTO retiring_titles
FROM unique_titles
GROUP BY unique_titles.title
ORDER BY COUNT(title) DESC;

SELECT * FROM retiring_titles;

DROP TABLE mentorship_eligability;

/*Create a table to hold potential candidates for mentor positions*/
SELECT DISTINCT ON (e.emp_no)
	e.emp_no,
	e.first_name,
	e.last_name,
	e.birth_date,
	ti.title,
	de.from_date,
	de.to_date
INTO mentorship_eligability
FROM employees AS e
JOIN dept_emp as de
	ON (e.emp_no=de.emp_no)
JOIN titles as ti
	ON (ti.emp_no=e.emp_no)
WHERE (e.birth_date <= '1965-12-31' AND e.birth_date >= '1965-01-01')
	AND (de.to_date = '9999-01-01')
ORDER BY e.emp_no;

SELECT * FROM mentorship_eligability;

/*Create a table to hold the count of positions that will need to be filled by title*/
SELECT COUNT (emp_no) emp_no, 
	title
INTO unique_counts
FROM unique_titles
WHERE to_date = '9999-01-01'
GROUP BY title
ORDER BY COUNT(title) DESC;

/*Create a table to hold the count of mentors by position*/
SELECT COUNT (emp_no) emp_no, 
	title
INTO mentorship_counts
FROM mentorship_eligability
WHERE to_date = '9999-01-01'
GROUP BY title
ORDER BY COUNT(title) DESC;

/*Join the mentor-eligable and retiring position counts*/
SELECT uc.title, uc.emp_no, mc.emp_no
FROM unique_counts as uc
JOIN mentorship_counts as mc
	ON (mc.title=uc.title)
ORDER BY uc.emp_no DESC;