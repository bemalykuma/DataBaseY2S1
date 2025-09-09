SELECT e.first_name, e.last_name, e.employee_id Emp,
m.first_name mgr_first_name,  m.first_name mgr_last_name,m.employee_id Mgr
FROM employees e
LEFT OUTER JOIN employees m
ON (e.manager_id = m.employee_id)
WHERE e.manager_id IS NULL;