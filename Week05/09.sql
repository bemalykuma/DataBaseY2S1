SELECT CONCAT(first_name, " ", last_name) AS `full name`, phone_number AS phone
FROM employees
WHERE commission_pct IS NOT NULL AND commission_pct > 0; 