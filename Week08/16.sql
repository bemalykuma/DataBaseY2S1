SELECT customerName, sum(quantityOrdered*priceEach) AS Expense
FROM orders o
JOIN customers c
ON (c.customerNumber = o.customerNumber)
JOIN orderdetails od
ON (od.orderNumber = o.orderNumber)

GROUP BY customerName
HAVING Expense > 15000;