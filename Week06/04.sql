SELECT e.first_name, e.last_name, e.employee_id Emp, 
m.first_name AS `MGR First Name`, m.last_name AS `MGR Last Name`, m.employee_id AS Mgr
FROM employees e
JOIN employees m
ON (e.manager_id = m.employee_id);