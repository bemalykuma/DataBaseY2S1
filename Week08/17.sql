SELECT country, jobTitle, count(employeeNumber) AS `Number of employees`
FROM offices
JOIN employees
USING (officeCode)
WHERE territory = "EMEA"

GROUP BY jobTitle, country
HAVING count(employeeNumber) = 1