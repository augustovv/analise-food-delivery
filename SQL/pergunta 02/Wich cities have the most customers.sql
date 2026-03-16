/*2. Which cities have the most customers?*/
SELECT city, COUNT(*) FROM customers_medium GROUP BY city ORDER BY COUNT(*) DESC LIMIT 3;