use sql_store;

update shippers
set name = 'Bolt'
where shipper_id = 6;

-- select * from shippers where shipper_id = 6;

update orders
set 
    status = default, 
	comments = "please double check",
    shipper_id = null;
-- where order_id in (9, 10, 12);

select * from orders;