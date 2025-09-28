SELECT firstName, lastName, count(customerNumber) AS `Number of customers`
FROM employees e
JOIN offices o
USING (officeCode)
JOIN customers c
ON (employeeNumber = salesRepEmployeeNumber)
WHERE o.country != c.country
GROUP BY salesRepEmployeeNumber
HAVING count(customerNumber) > 1