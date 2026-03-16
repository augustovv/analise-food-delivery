/*11. Which cuisine type generates the most revenue?*/
SELECT  
 restaurants.cuisine, ROUND(SUM( menu_items.price * order_items.quantity),2) as total
FROM 
	orders_medium
JOIN 
   order_items ON orders_medium.order_id = order_items.order_id
JOIN 
  menu_items ON order_items.item_id = menu_items.item_id
JOIN 
   restaurants ON restaurants.restaurant_id = orders_medium.restaurant_id
WHERE status <> 'Cancelled'
GROUP BY restaurants.cuisine
ORDER BY total DESC;