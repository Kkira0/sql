 -- self join
 
use sql_hr;
SELECT 
    e.employee_id as "Employee ID",
    e.first_name as "First name",
    e.last_name as "Last name",
    -- e.reports_to
    m.first_name as "Manager name"
FROM
    employees e
JOIN employees m
	ON e.reports_to = m.employee_id