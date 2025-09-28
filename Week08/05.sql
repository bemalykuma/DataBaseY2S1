SELECT salesRepEmployeeNumber AS `Employee Number`, firstName, lastName, sum(creditLimit)
FROM customers
JOIN employees
ON salesRepEmployeeNumber = employeeNumber
GROUP BY salesRepEmployeeNumber;