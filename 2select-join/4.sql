-- outer join

-- orders + customers

use sql_store;

-- left outer join
SELECT 
    *
FROm orders o
left JOIN customers c 
USING (customer_id);

-- right outer join
SELECT 
    *
FROm customers c 
right JOIN orders o
USING (customer_id);

-- uzd
-- atlasit produktus un pasutijuma vienibas
-- ta lai tiktu atlasiti visi produkti
--  ari tadi kuri nav pasutiti

select * from 
products p 
left join order_items o 
using (product_id);

