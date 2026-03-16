/*5. What is the average delivery time?*/
SELECT 
    MIN(CAST(SUBSTRING(delivery_time, 12, 8) AS TIME)) AS fastest_delivery,
    MAX(CAST(SUBSTRING(delivery_time, 12, 8) AS TIME)) AS slowest_delivery,
    SEC_TO_TIME(AVG(TIME_TO_SEC(CAST(SUBSTRING(delivery_time, 12, 8) AS TIME)))) AS avarage_time_delivery
FROM fooddelivery.orders_medium;