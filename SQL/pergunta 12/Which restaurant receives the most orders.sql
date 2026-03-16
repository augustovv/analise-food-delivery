/*12. Which restaurant receives the most orders?*/
SELECT  
  orders_medium.restaurant_id,
  COUNT(order_items.order_id) as qty_orders
FROM 
	orders_medium
 JOIN 
   order_items ON orders_medium.order_id = order_items.order_id
GROUP BY orders_medium.restaurant_id
ORDER BY qty_orders DESC ;