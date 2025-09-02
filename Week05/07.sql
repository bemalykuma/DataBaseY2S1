SELECT street_address, city, postal_code FROM locations
WHERE state_province IS NOT NULL AND city LIKE 'S______';