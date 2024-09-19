use sql_store;

-- 1.uzdevums
SELECT 
    c.first_name,
    c.last_name,
    c.customer_id,
    o.order_id,
    o.order_date
FROM
    customers c
        JOIN
    orders o USING (customer_id);

-- 2.uzdevums

SELECT 
    c.first_name,
    c.last_name,
    c.customer_id,
    o.order_id,
    o.order_date,
    sh.name
FROM
    customers c
        JOIN
    orders o USING (customer_id)
        JOIN
    shippers sh USING (shipper_id);

-- 3.uzdevums

SELECT 
    c.first_name,
    c.last_name,
    c.customer_id,
    o.order_id,
    o.order_date,
    sh.name as "Shipper name",
    os.name as "Status name"
FROM
    customers c
        JOIN
    orders o USING (customer_id)
        JOIN
    shippers sh USING (shipper_id)
    join
    order_statuses os on o.status = os.order_status_id;

-- 4.uzdevums
use sql_hr;

select e.first_name, e.last_name, m.first_name as "Manager first name"
 from employees e
join employees m 
on e.reports_to = m.employee_id









