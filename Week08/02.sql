SELECT city, COUNT(employeeNumber)
FROM offices o
JOIN employees e
ON e.officeCode = o.officeCode

GROUP BY city
HAVING COUNT(employeeNumber) > 2;