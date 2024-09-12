
-- use sql_hr;
-- select * from employees;

-- use sql_store;
-- select first_name from customers;

-- use sql_hr;
-- select * from employees 
-- where reports_to is not null;

use sql_store;
SELECT 
	order_id, customer_id, name
FROM
    orders
join order_statuses
	on orders.status = order_statuses.order_status_id;