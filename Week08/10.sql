SELECT ifnull(state, "No Data") AS state, sum(creditLimit)/count(creditLimit) AS `Average Credit`
FROM customers
GROUP BY state;