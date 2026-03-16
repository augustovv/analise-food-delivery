/*8. Which cities generate the highest revenue?*/
SELECT r.city, CONCAT("$ ", ROUND(SUM(mi.price*oi.quantity),2)) as receita
FROM orders_medium as om
JOIN order_items as oi ON om.order_id = oi.order_id
JOIN menu_items as mi ON oi.item_id = mi.item_id
JOIN restaurants as r ON om.restaurant_id = r.restaurant_id
GROUP BY city
ORDER BY receita DESC
limit 3;