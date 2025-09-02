SELECT CONCAT(street_address, "_", city) AS Address FROM locations
WHERE country_id NOT IN ("CA", "CN", "CH");