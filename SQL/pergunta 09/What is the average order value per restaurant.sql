/*9. What is the average order value per restaurant?*/ 
SELECT
 orders_medium.restaurant_id,
 COUNT(*) as total_orders,
 ROUND(avg(quantity*price),2) as avarage_order_value
FROM
 orders_medium
JOIN 
 order_items USING (order_id)
JOIN  
 menu_items ON menu_items.item_id = order_items.item_id
WHERE status <> 'Cancelled'
GROUP BY  orders_medium.restaurant_id
ORDER BY avarage_order_value DESC;