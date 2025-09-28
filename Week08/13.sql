SELECT orderNumber ,count(distinct productCode)
FROM orderdetails o
JOIN products p
USING (productCode)
WHERE productLine = "Planes"

GROUP BY orderNumber
HAVING MIN(quantityOrdered) > 28;