--Вывести перечисление id работников, относящихся к одной должности.

select r.role_name, array_agg(re.employee_id) as employee_id
from roles r
join roles_employee re on r.id = re.role_id
group by r.role_name; 