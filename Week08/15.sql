SELECT avg(creditLimit)
FROM customers
GROUP BY salesRepEmployeeNumber
HAVING COUNT(customerNumber) > 1;