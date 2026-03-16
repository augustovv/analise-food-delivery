/*13. What is the average spending per customer?*/
SELECT  
   customer_id, 
   ROUND(avg((price*quantity)),2) as avarage_spending 
FROM 
   orders_medium
JOIN 
   order_items USING(order_id) 
JOIN 
     menu_items USING (item_id)  WHERE status<>'Cancelled'
GROUP BY customer_id
ORDER BY avarage_spending DESC;