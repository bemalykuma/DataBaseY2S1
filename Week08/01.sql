SELECT customerName, sum(quantityOrdered) AS `Quantity Ordered`
FROM orders
JOIN orderdetails USING (orderNumber)
JOIN customers USING (customerNumber)
GROUP BY customerName
ORDER BY customerName ASC;