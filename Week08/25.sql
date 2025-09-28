SELECT productLine AS `Product Line`, SUM(quantityInStock+sumord.ord) Quantity
FROM products
JOIN (SELECT SUM(quantityOrdered) ord, productCode
	 FROM orderdetails
	 GROUP BY productCode
	 HAVING SUM(quantityOrdered) > 50
	 ) sumord
USING (productCode)
GROUP BY productLine