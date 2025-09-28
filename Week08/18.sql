SELECT MONTH(paymentDate) AS Month, SUM(amount) AS `Total amount`
FROM payments
GROUP BY Month
HAVING SUM(amount) > 50000; 