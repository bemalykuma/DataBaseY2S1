SELECT employee_id, first_name, last_name, department_id, department_name
FROM departments
LEFT OUTER JOIN employees
USING (	department_id)