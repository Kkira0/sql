-- use sql_store;
-- Select 1,2

use sql_invoicing;
select 
* 
from clients
where phone >23
order by client_id;
