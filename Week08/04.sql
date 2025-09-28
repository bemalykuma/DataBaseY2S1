SELECT e.employeeNumber AS `Employee Number`, CONCAT(e.firstName, " ", e.lastName) AS `Employee Name`,
	o.country, e.reportsTo, CONCAT(r.firstName, " ", r.lastName) AS `Report Name`, count(customerNumber) AS `Total customer`
FROM employees e
LEFT OUTER JOIN employees r
ON (r.employeeNumber = e.reportsTo)
JOIN offices o
ON (e.officeCode = o.officeCode)
LEFT OUTER JOIN customers c
ON (salesRepEmployeeNumber = e.employeeNumber)

GROUP BY e.employeeNumber