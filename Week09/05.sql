SELECT employee_id, first_name, last_name, department_id
FROM employees
WHERE department_id in (SELECT department_id
					   FROM departments
					   WHERE location_id in (SELECT location_id
										   FROM locations
										   WHERE city like 'T%'))