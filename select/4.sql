-- atlasit visus customers, kuri dzimusi no 1990.g. un kuriem ir vairak ka 1000 punktu

use sql_store;

select * from customers where points > 1000 and birth_date > '1990-01-01';

select * from customers where points > 1000 or birth_date > '1990-01-01';

select * from customers where birth_date > '1990-01-01' or points > 1000 and state = 'VA' or 'CO';