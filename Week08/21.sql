SELECT firstName, LastName, city
FROM employees e
JOIN offices o
ON (o.officeCode = e.officeCode)
WHERE country in (
	SELECT country
	FROM customers
  	GROUP BY country
  	HAVING count(customerNumber) > 1
)

ORDER BY city ASC;