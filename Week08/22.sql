SELECT productName, count(orderNumber), sum(quantityOrdered)
FROM products p
JOIN orderdetails o
ON (p.productCode = o.productCode)
WHERE productName LIKE '%America%' or productVendor LIKE '%Diecast%'
GROUP BY productName
HAVING sum(quantityOrdered) < 50;