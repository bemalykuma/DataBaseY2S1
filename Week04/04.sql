SELECT CONCAT(first_name, ' ', last_name) `Employee name`, commission_pct*salary `Net Commission`
FROM employees
ORDER BY `Net Commission` DESC;