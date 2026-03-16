/*6. Which restaurants generate the most revenue?*/
SELECT orders_medium.restaurant_id, ROUND(sum(menu_items.price),2) as 'receita' FROM order_items
JOIN orders_medium ON orders_medium.order_id = order_items.order_id 
JOIN menu_items ON menu_items.item_id = order_items.item_id
WHERE status in ("Delivered","Late")
group by orders_medium.restaurant_id
ORDER BY receita desc;