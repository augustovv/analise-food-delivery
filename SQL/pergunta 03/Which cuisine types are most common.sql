/*3. Which cuisine types are most common? */
/*3.1 BASEADO NA QUANTIDADE DE PEDIDOS: */

SELECT r.cuisine, COUNT(*) as qty_of_orders_from_restaurants_from_this_type
FROM orders_medium as om JOIN restaurants as r ON om.restaurant_id = r.restaurant_id 
GROUP BY r.cuisine 
ORDER BY qty_of_orders_from_restaurants_from_this_type DESC;

/*3.1 BASEADO NA QUANTIDADE DE RESTAURANTES: */
SELECT cuisine, COUNT(*) as restaurants_from_this_type
FROM restaurants 
GROUP BY cuisine 
ORDER BY restaurants_from_this_type DESC;