SELECT orderNumber, sum(quantityOrdered)
FROM orders
JOIN orderdetails
USING (orderNumber)
WHERE status like 'Ship%'

GROUP BY orderNumber
HAVING MIN(quantityOrdered) >= 24;