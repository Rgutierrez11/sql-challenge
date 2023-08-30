Create Table Departments(
	dept_no varchar not null,
	dept_name varchar not null,
	primary key(dept_no)
);

Create Table Employees(
	emp_no  int not null,
	emp_title_id varchar not null,
	birth_date date not null,
	first_name varchar not null,
	last_name varchar not null,
	sex varchar not null,
	hire_date date not null,
	primary key(emp_no)
);

Create Table Department_Employees(
	emp_no int not null,
	dept_no varchar not null,
	foreign key(emp_no) references Employees(emp_no),
	foreign key(dept_no) references Departments(dept_no),
	primary key(emp_no,dept_no)
);

Create Table Department_Managers(
	dept_no varchar not null,
	emp_no int not null,
	foreign key(dept_no) references Departments(dept_no),
	foreign key(emp_no) references Employees(emp_no),
	primary key(dept_no,emp_no)
);

Create Table Salaries(
 	emp_no int not null,
	salary int not null,
	foreign key(emp_no) references Employees(emp_no),
	primary key(emp_no)

);
Create Table Titles(
	title_id varchar not null,
	title varchar not null,
	primary key(title_id)
)