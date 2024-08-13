CREATE TABLE "Employees" (
    "emp_no" Integer PRIMARY KEY NOT NULL,
    "emp_title_id" Varchar(10)   NOT NULL,
    "birth_date" Date   NOT NULL,
    "first_name" Varchar(30)   NOT NULL,
    "last_name" Varchar(30)   NOT NULL,
    "sex" Varchar(10)   NOT NULL,
    "hire_date" Date   NOT NULL
);

CREATE TABLE "Salaries" (
    "emp_no" Integer PRIMARY KEY NOT NULL,
    "salary" Integer   NOT NULL
);

CREATE TABLE "titles" (
    "title_id" Varchar(10)  PRIMARY KEY NOT NULL,
    "title" Varchar(30)   NOT NULL
);

CREATE TABLE "Dept_emp" (
    "emp_no" Integer   NOT NULL,
    "dept_no" Varchar(10)   NOT NULL,
	UNIQUE (emp_no, dept_no)
);

CREATE TABLE "Dept_Manager" (
    "dept_no" Varchar(10)   NOT NULL,
    "emp_no"  Integer  NOT NULL,
	UNIQUE (dept_no, emp_no)
);

CREATE TABLE "Departments" (
    "dept_no" Varchar(10) PRIMARY KEY  NOT NULL,
    "dept_name" Varchar(40)   NOT NULL
);

ALTER TABLE "Employees" ADD CONSTRAINT "fk_Employees_emp_title_id" FOREIGN KEY("emp_title_id")
REFERENCES "titles" ("title_id");

ALTER TABLE "Salaries" ADD CONSTRAINT "fk_Salaries_emp_no" FOREIGN KEY("emp_no")
REFERENCES "Employees" ("emp_no");

ALTER TABLE "Dept_emp" ADD CONSTRAINT "fk_Dept_emp_emp_no" FOREIGN KEY("emp_no")
REFERENCES "Employees" ("emp_no");

ALTER TABLE "Dept_emp" ADD CONSTRAINT "fk_Dept_emp_dept_no" FOREIGN KEY("dept_no")
REFERENCES "Departments" ("dept_no");

ALTER TABLE "Dept_Manager" ADD CONSTRAINT "fk_Dept_Manager_emp_no" FOREIGN KEY("emp_no")
REFERENCES "Employees" ("emp_no");

ALTER TABLE "Dept_Manager" ADD CONSTRAINT "fk_Dept_Manager_dept_no" FOREIGN KEY("dept_no")
REFERENCES "Departments" ("dept_no");

select * from "Salaries";
select * from "Dept_emp";
select * from "Dept_Manager";
select * from "Employees";
select * from "titles";
select * from "Departments";