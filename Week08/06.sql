SELECT country, count(officeCode) AS `number of offices`
FROM offices
GROUP BY country
ORDER BY `number of offices` DESC;