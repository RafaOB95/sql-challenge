CREATE TABLE dept_emp (
    emp_no int   NOT NULL,
    dept_no VARCHAR(10)   NOT NULL
);

--DROP TABLE Departments

CREATE TABLE Titles (
    title_id VARCHAR(10)   NOT NULL,
    title VARCHAR(30)   NOT NULL,
    CONSTRAINT pk_Titles PRIMARY KEY (
        title_id
     )
);

CREATE TABLE Salaries (
    emp_no int   NOT NULL,
    salary int   NOT NULL
);

CREATE TABLE Employees (
    emp_no int   NOT NULL,
    title_id VARCHAR(10)   NOT NULL,
    birth_date VARCHAR(10)   NOT NULL,
    first_name VARCHAR(20)   NOT NULL,
    last_name VARCHAR(20)   NOT NULL,
    sex VARCHAR(2)   NOT NULL,
    hire_date VARCHAR(10)   NOT NULL,
    CONSTRAINT pk_Employees PRIMARY KEY (
        emp_no
     )
);

CREATE TABLE Departments (
    dept_no VARCHAR(10)   NOT NULL,
    dept_name VARCHAR(30)   NOT NULL,
    CONSTRAINT pk_Departments PRIMARY KEY (
        dept_no
     )
);

CREATE TABLE Dept_manager (
    dept_no VARCHAR(10)   NOT NULL,
    emp_no int   NOT NULL
);

-- IMPORTANT: I FILL EACH TABLE BY CLIKING WITH THE RIGHT BUTTON AND USING DE IMPORT FUNCTION 
-- THAT PGADMIN HAVE, FROM HERE YOU HAVE TO EXPORT THE EXCEL FILES BEFORE RUN THE REST OF THE CODE.