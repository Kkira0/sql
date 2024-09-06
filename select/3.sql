-- atlasit visus ierakstus no orders tabulas , kuri izveidoti 2018.gada

use sql_store;

select * from orders
where order_date >= '2018-01-01' and order_date < '2019-01-01';

select first_name, last_name, points, state from customers
WHERE state NOT IN ('VA', 'CO'); 
-- where state != 'VA';