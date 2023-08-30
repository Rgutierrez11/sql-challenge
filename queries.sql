select employees.emp_no
		last_name,
		first_name,
		sex,
		salary
from Employees
		
Inner Join Salaries
	on salaries.emp_no = employees.emp_no

select first_name,last_name,hire_date
from employees
where hire_date between '1986-01-01' and '1986-12-31'

select department_managers.dept_no,
		department_managers.emp_no,
		dept_name,
		last_name,
		first_name
from department_managers

Inner Join Departments
	on Departments.dept_no = department_managers.dept_no
Inner Join Employees
	on Employees.emp_no =department_managers.emp_no
	
	
select department_employees.dept_no,
		department_employees.emp_no,
		dept_name,
		last_name,
		first_name
from department_employees

Inner Join Departments
	on Departments.dept_no = department_employees.dept_no
Inner Join Employees
	on Employees.emp_no =department_employees.emp_no
	
		
select first_name, last_name, sex from Employees

where first_name = 'Hercules' and last_name like 'B%'

select 
		department_employees.emp_no,
		dept_name,
		last_name,
		first_name
from department_employees
Inner join employees
	on employees.emp_no = department_employees.emp_no
Inner join departments
	on departments.dept_no = department_employees.dept_no
Where dept_name = 'Sales'

select 
		department_employees.emp_no,
		dept_name,
		last_name,
		first_name
from department_employees
Inner join employees
	on employees.emp_no = department_employees.emp_no
Inner join departments
	on departments.dept_no = department_employees.dept_no
Where dept_name = 'Sales' or dept_name = 'Development'

select last_name, count(last_name) from Employees group by(last_name)
order by count desc