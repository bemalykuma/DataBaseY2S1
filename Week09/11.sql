SELECT department_id, count(employee_id) AS `number of employees`
FROM employees
GROUP BY department_id
HAVING count(employee_id) > (SELECT count(employee_id)
							FROM employees
							WHERE department_id = 60);