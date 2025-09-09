SELECT c.customerNumber, customerName FROM payments p
RIGHT OUTER JOIN customers c
ON (c.customerNumber = p.customerNumber)
WHERE checkNumber IS NULL;