SELECT first_name, last_name, department_id
FROM employees
WHERE salary < (SELECT avg(salary)
			   FROM employees
			   WHERE department_id = 60)
ORDER BY department_id ASC;