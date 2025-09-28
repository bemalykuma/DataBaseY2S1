SELECT DEPARTMENT_ID, FIRST_NAME, LAST_NAME, JOB_ID
FROM employees
WHERE department_id = (SELECT department_id
					   FROM departments
					   WHERE department_name = "Executive");