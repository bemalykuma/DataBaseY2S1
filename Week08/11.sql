SELECT productCode, productName, 
		sum(quantityOrdered*priceEach) AS `Sum Net Sales`, 
		avg(quantityOrdered*priceEach) AS `Average Net Sales`
FROM products
JOIN orderdetails
USING (productCode)
GROUP BY productCode
HAVING `Average Net Sales` > (
  	SELECT avg(quantityOrdered*priceEach)
  	FROM orderdetails
);