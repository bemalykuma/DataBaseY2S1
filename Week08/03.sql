SELECT country, p.productCode, quantityOrdered, buyPrice, quantityOrdered*buyPrice AS `Net Sales`
FROM orderdetails od
JOIN products p
ON od.productCode = p.productCode
JOIN orders o 
ON o.orderNumber = od.orderNumber
JOIN customers c
ON o.customerNumber = c.customerNumber