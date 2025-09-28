SELECT customerNumber, sum(amount)
FROM payments
WHERE checkNumber like 'N%' AND paymentDate > '2004-01-01'
GROUP BY customerNumber
HAVING min(amount) > 35000;