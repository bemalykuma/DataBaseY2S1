SELECT employee_id, first_name, last_name, e.department_id, department_name
FROM employees e
JOIN departments d
ON (e.department_id = d.department_id)