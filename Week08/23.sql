SELECT customerName, productCode, sum(quantityOrdered) AS Quantity
FROM orders o
JOIN orderdetails od
ON (od.orderNumber = o.orderNumber)
LEFT OUTER JOIN customers c
ON (o.customerNumber = c.customerNumber)

GROUP BY customerName, productCode
HAVING Quantity > 50
ORDER BY Quantity DESC;