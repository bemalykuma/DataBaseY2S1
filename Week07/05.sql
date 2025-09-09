SELECT l.location_id, city
FROM departments d
RIGHT OUTER JOIN locations l
ON (l.location_id = d.location_id)
WHERE department_id IS NULL
ORDER BY city ASC