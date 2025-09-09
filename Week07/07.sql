SELECT country_id, country_name, region_name
FROM countries c
LEFT OUTER JOIN locations l
USING (country_id)
JOIN regions
USING (region_id)
WHERE l.country_id IS NULL
ORDER BY country_id ASC;