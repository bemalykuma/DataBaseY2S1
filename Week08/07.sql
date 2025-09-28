SELECT CONCAT("In 2004, Average payment is", " ", AVG(amount)) AS  `Average payment description`
FROM payments
WHERE paymentDate like '2004%'