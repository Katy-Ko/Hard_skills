-- 1. ������� ���� ���������� ��� �������� ���� � ����, ������ � ����������.
select e.employee_name, s.monthly_salary
from employees_salary es
join employees e on es.employee_id = e.id 
join salary s on es.salary_id = s.id;

-- 2. ������� ���� ���������� � ������� �� ������ 2000.
select e.employee_name, s.monthly_salary
from employees_salary es
join employees e on es.employee_id = e.id
join salary s on es.salary_id = s.id 
where monthly_salary < 2000;

-- 3. ������� ��� ���������� �������, �� �������� �� ��� �� ��������. 
select s.monthly_salary, e.employee_name
from employees_salary es
left join employees e on e.id = es.employee_id
left  join salary s on s.id = es.salary_id
where e.employee_name is null;

-- 4. ������� ��� ���������� �������  ������ 2000 �� �������� �� ��� �� ��������.
select s.monthly_salary, e.employee_name
from employees_salary es
left join employees e on e.id = es.employee_id
left join salary s on s.id = es.salary_id
where s.monthly_salary < 2000 and e.employee_name is null; 

-- 5. ����� ���� ���������� ���� �� ��������� ��.
select e.employee_name, s.monthly_salary
from employees e 
left join employees_salary es on e.id = es.employee_id
left join salary s on s.id = es.salary_id
where s.monthly_salary is null;

-- 6. ������� ���� ���������� � ���������� �� ���������.
select e.employee_name, r.role_name
from roles_employee re 
join employees e on e.id = re.employee_id 
join roles r on r.id = re.role_id;

-- 7. ������� ����� � ��������� ������ Java �������������.
select e.employee_name, r.role_name
from roles_employee re 
left join employees e on e.id = re.employee_id 
left join roles r on r.id = re.role_id
where r.role_name like '%Java Developer';

-- 8. ������� ����� � ��������� ������ Python �������������.
select e.employee_name, r.role_name
from roles_employee re 
left join employees e on e.id = re.employee_id 
left join roles r on r.id = re.role_id
where r.role_name like '%Python Developer';

-- 9. ������� ����� � ��������� ���� QA ���������.
select e.employee_name, r.role_name
from roles_employee re 
left join employees e on e.id = re.employee_id 
left join roles r on r.id = re.role_id
where r.role_name like '%QA%';

-- 10. ������� ����� � ��������� ������ QA ���������.
select e.employee_name, r.role_name
from roles_employee re 
left join employees e on e.id = re.employee_id 
left join roles r on r.id = re.role_id
where r.role_name like '%Manual QA%';

-- 11. ������� ����� � ��������� ��������������� QA
select e.employee_name, r.role_name
from roles_employee re 
left join employees e on e.id = re.employee_id 
left join roles r on r.id = re.role_id
where r.role_name like '%Automation QA%';

-- 12. ������� ����� � �������� Junior ������������
select r.role_name, e.employee_name, s.monthly_salary
from roles r
left join roles_employee re on r.id = re.role_id 
left join employees e on re.employee_id = e.id 
left join employees_salary es on e.id = es.employee_id 
left join salary s on s.id = es.salary_id
where r.role_name like 'Junior%';

-- 13. ������� ����� � �������� Middle ������������
select r.role_name, e.employee_name, s.monthly_salary
from roles r
left join roles_employee re on r.id = re.role_id 
left join employees e on re.employee_id = e.id 
left join employees_salary es on e.id = es.employee_id 
left join salary s on s.id = es.salary_id
where r.role_name like 'Middle%';

-- 14. ������� ����� � �������� Senior ������������
select r.role_name, e.employee_name, s.monthly_salary
from roles r
left join roles_employee re on r.id = re.role_id 
left join employees e on re.employee_id = e.id 
left join employees_salary es on e.id = es.employee_id 
left join salary s on s.id = es.salary_id
where r.role_name like 'Senior%';

-- 15. ������� �������� Java �������������
select r.role_name, s.monthly_salary
from roles r 
left join roles_employee re on r.id = re.role_id 
left join employees e on re.employee_id = e.id 
left join employees_salary es on es.employee_id = e.id 
left join salary s on es.salary_id = s.id
where r.role_name like '%Java Developer';

-- 16. ������� �������� Python �������������
select r.role_name, s.monthly_salary
from roles r 
left join roles_employee re on r.id = re.role_id 
left join employees e on re.employee_id = e.id 
left join employees_salary es on es.employee_id = e.id 
left join salary s on es.salary_id = s.id
where r.role_name like '%Python Developer';

-- 17. ������� ����� � �������� Junior Python �������������
select r.role_name, e.employee_name, s.monthly_salary
from roles r 
left join roles_employee re on r.id = re.role_id 
left join employees e on e.id = re.employee_id 
left join employees_salary es on e.id = es.employee_id 
left join salary s on s.id = es.salary_id
where r.role_name like 'Junior Python Developer';

-- 18. ������� ����� � �������� Middle JS �������������
select r.role_name, e.employee_name, s.monthly_salary
from roles r 
left join roles_employee re on r.id = re.role_id 
left join employees e on e.id = re.employee_id 
left join employees_salary es on e.id = es.employee_id 
left join salary s on s.id = es.salary_id
where r.role_name like 'Middle JavaScript Developer';

-- 19. ������� ����� � �������� Senior Java �������������
select r.role_name, e.employee_name, s.monthly_salary
from roles r 
left join roles_employee re on r.id = re.role_id 
left join employees e on e.id = re.employee_id 
left join employees_salary es on e.id = es.employee_id 
left join salary s on s.id = es.salary_id
where r.role_name like 'Senior Java Developer';

-- 20. ������� �������� Junior QA ���������
select r.role_name, s.monthly_salary
from roles r 
left join roles_employee re on r.id = re.role_id 
left join employees e on e.id = re.employee_id 
left join employees_salary es on e.id = es.employee_id 
left join salary s on s.id = es.salary_id
where r.role_name like 'Junior%' and r.role_name like '%QA%';

-- 21. ������� ������� �������� ���� Junior ������������
select r.role_name, avg(s.monthly_salary)
from roles r 
left join roles_employee re on r.id = re.role_id 
left join employees e on e.id = re.employee_id 
left join employees_salary es on e.id = es.employee_id 
left join salary s on s.id = es.salary_id
where r.role_name like 'Junior%'
group by r.role_name;

-- 22. ������� ����� ������� JS �������������
select sum(s.monthly_salary) as total
from roles r 
left join roles_employee re on r.id = re.role_id 
left join employees e on e.id = re.employee_id 
left join employees_salary es on e.id = es.employee_id 
left join salary s on s.id = es.salary_id
where r.role_name like '%JavaScript%';

-- 23. ������� ����������� �� QA ���������
select min(s.monthly_salary) as min_salary
from roles r 
left join roles_employee re on r.id = re.role_id 
left join employees e on e.id = re.employee_id 
left join employees_salary es on e.id = es.employee_id 
left join salary s on s.id = es.salary_id
where r.role_name like '%QA engineer' ;

-- 24. ������� ������������ �� QA ���������
select max(s.monthly_salary) as max_salary
from roles r 
left join roles_employee re on r.id = re.role_id 
left join employees e on e.id = re.employee_id 
left join employees_salary es on e.id = es.employee_id 
left join salary s on s.id = es.salary_id
where r.role_name like '%QA engineer';

-- 25. ������� ���������� QA ���������
select count(r.role_name)
from roles_employee re
left join roles r on r.id = re.role_id
left join employees e on e.id = re.employee_id
where r.role_name like '%QA%';

-- 26. ������� ���������� Middle ������������.
select count(r.role_name)
from roles_employee re
left join roles r on r.id = re.role_id
left join employees e on e.id = re.employee_id
where r.role_name like 'Middle%';

-- 27. ������� ���������� �������������
select count(r.role_name)
from roles_employee re
left join roles r on r.id = re.role_id
left join employees e on e.id = re.employee_id
where r.role_name like '%Developer';

-- 28. ������� ���� (�����) �������� �������������.
select sum(s.monthly_salary) as total
from roles r 
left join roles_employee re on r.id = re.role_id 
left join employees e on e.id = re.employee_id 
left join employees_salary es on e.id = es.employee_id 
left join salary s on s.id = es.salary_id
where r.role_name like '%Developer';


-- 29. ������� �����, ��������� � �� ���� ������������ �� �����������
select e.employee_name, r.role_name, s.monthly_salary
from employees e 
left join roles_employee re on e.id = re.employee_id 
left join roles r on r.id = re.role_id 
left join employees_salary es on e.id = es.employee_id 
left join salary s on s.id = es.salary_id
order by s.monthly_salary ; 

-- 30. ������� �����, ��������� � �� ���� ������������ �� ����������� � ������������ � ������� �� �� 1700 �� 2300
select e.employee_name, r.role_name, s.monthly_salary
from employees e 
left join roles_employee re on e.id = re.employee_id 
left join roles r on r.id = re.role_id 
left join employees_salary es on e.id = es.employee_id 
left join salary s on s.id = es.salary_id
where s.monthly_salary between 1700 and 2300;

-- 31. ������� �����, ��������� � �� ���� ������������ �� ����������� � ������������ � ������� �� ������ 2300
select e.employee_name, r.role_name, s.monthly_salary
from employees e 
left join roles_employee re on e.id = re.employee_id 
left join roles r on r.id = re.role_id 
left join employees_salary es on e.id = es.employee_id 
left join salary s on s.id = es.salary_id
where s.monthly_salary < 2300
order by s.monthly_salary ;

-- 32. ������� �����, ��������� � �� ���� ������������ �� ����������� � ������������ � ������� �� ����� 1100, 1500, 2000
select e.employee_name, r.role_name, s.monthly_salary
from employees e 
left join roles_employee re on e.id = re.employee_id 
left join roles r on r.id = re.role_id 
left join employees_salary es on e.id = es.employee_id 
left join salary s on s.id = es.salary_id
where s.monthly_salary = 1100 or s.monthly_salary = 1500 or s.monthly_salary = 2000
order by s.monthly_salary ;
