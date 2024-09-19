-- use sql_store;

-- insert into orders (customer_id, order_date, status)
-- values (11, '2019-01-01', 3);

-- select * from orders;
-- select last_insert_id();

insert into order_items 
values (last_insert_id(), 1, 2, 19.35), (last_insert_id(), 2, 3, 5), (last_insert_id(), 3, 4, 67);

select * from order_sitems;