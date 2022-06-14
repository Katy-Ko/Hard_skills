--Вывести количество работников, зарплата которых составляет:
-- меньше 1 500;
-- от 1 500 до 2 000;
-- больше 2 000.

select count(e.employee_name) as employees, 
	case
		when s.monthly_salary < 1500 then '< 1500'
		when s.monthly_salary between 1500 and 2000 then '1500 - 2000'
		when s.monthly_salary > 2000 then '> 2000'
	end as salary
from employees e 
join employees_salary es on e.id = es.employee_id 
join salary s on es.salary_id = s.id 
where s.monthly_salary is not null
group by salary;