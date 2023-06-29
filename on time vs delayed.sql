

SELECT 
    COUNT(CASE WHEN order_delivered_customer_date <= order_estimated_delivery_date THEN 1 END) AS on_time_deliveries,
    COUNT(CASE WHEN order_delivered_customer_date > order_estimated_delivery_date THEN 1 END) AS delayed_deliveries
FROM orders;

SELECT 
    COUNT(CASE WHEN order_delivered_customer_date <= order_estimated_delivery_date THEN 1 END) AS on_time_deliveries,
    COUNT(CASE WHEN order_delivered_customer_date > order_estimated_delivery_date THEN 1 END) AS delayed_deliveries,
    (COUNT(CASE WHEN order_delivered_customer_date > order_estimated_delivery_date THEN 1 END) / CAST(COUNT(*) AS DECIMAL)) * 100 AS delayed_percentage
FROM orders;
