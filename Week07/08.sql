SELECT firstName, lastName
FROM employees e
LEFT OUTER JOIN customers c
ON (employeeNumber = salesRepEmployeeNumber)
WHERE customerNumber is NULL