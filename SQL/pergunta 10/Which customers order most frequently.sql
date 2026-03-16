/*10. Which customers order most frequently?*/
SELECT customer_id, COUNT(customer_id) as frequency FROM orders_medium WHERE status <> 'Cancelled' GROUP BY customer_id ORDER BY frequency DESC LIMIT 3;
