use sql_store;
-- SELECT 
--     o.order_id,
--     c.customer_id,
--     c.first_name,
--     c.last_name
-- FROM
--     orders o
-- JOIN customers c 
-- ON o.customer_id = c.customer_id;

-- iegut to pasu rezultatu ar USING
-- SELECT 
--     o.order_id,
--     c.customer_id,
--     c.first_name,
--     c.last_name
-- FROM
--     orders o
-- JOIN customers c 
-- USING (customer_id);-- 

-- kreisaja puse 

SELECT 
    o.order_id,
    c.customer_id,
    c.first_name,
    c.last_name
FROM
    customers c 
JOIN orders o
on o.customer_id = c.customer_id;

