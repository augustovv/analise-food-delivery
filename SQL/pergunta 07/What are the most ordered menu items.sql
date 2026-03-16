/*7. What are the most ordered menu items?*/
SELECT oi.item_id, mi.price, count(*) as qty
FROM order_items as oi
JOIN menu_items as mi
ON oi.item_id = mi.item_id
GROUP BY oi.item_id
ORDER BY count(*) desc
LIMIT 3;