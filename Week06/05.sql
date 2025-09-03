SELECT DISTINCT m.first_name AS `MGR First Name`, m.last_name AS `MGR Last Name`, m.manager_id AS MGR
FROM employees e
JOIN employees m
ON (e.manager_id = m.employee_id)
ORDER BY m.manager_id ASC;