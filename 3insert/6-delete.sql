use sql_store;

delete from order_items
where order_id in (10, 12);

select * from order_items;