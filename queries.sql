-- Use the existing database or skip database creation
-- Just create the tables directly

-- Create departments table
CREATE TABLE IF NOT EXISTS departments (
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(50),
    location VARCHAR(50)
);

-- Create employees table
CREATE TABLE IF NOT EXISTS employees (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50),
    salary DECIMAL(10,2),
    dept_id INT,
    hire_date DATE
    -- Remove foreign key constraint if it causes issues
    -- FOREIGN KEY (dept_id) REFERENCES departments(dept_id)
);

-- Create projects table
CREATE TABLE IF NOT EXISTS projects (
    project_id INT PRIMARY KEY,
    project_name VARCHAR(50),
    budget DECIMAL(12,2),
    dept_id INT
    -- Remove foreign key constraint if it causes issues
    -- FOREIGN KEY (dept_id) REFERENCES departments(dept_id)
);

-- Clear existing data if tables already exist
DELETE FROM projects;
DELETE FROM employees;
DELETE FROM departments;

-- Insert sample data
INSERT INTO departments VALUES 
(1, 'IT', 'New York'),
(2, 'HR', 'Chicago'),
(3, 'Finance', 'Boston'),
(4, 'Marketing', 'Los Angeles');

INSERT INTO employees VALUES 
(1, 'John Smith', 75000, 1, '2020-01-15'),
(2, 'Jane Doe', 65000, 2, '2019-03-20'),
(3, 'Mike Johnson', 82000, 1, '2018-06-10'),
(4, 'Sarah Wilson', 55000, 3, '2021-02-28'),
(5, 'Tom Brown', 90000, 4, '2017-11-05'),
(6, 'Lisa Davis', 72000, 2, '2020-08-12'),
(7, 'Robert Lee', 68000, 3, '2019-09-30');

INSERT INTO projects VALUES 
(1, 'Website Redesign', 50000, 1),
(2, 'Recruitment System', 30000, 2),
(3, 'Budget Planning', 45000, 3),
(4, 'Social Media Campaign', 60000, 4),
(5, 'Network Upgrade', 75000, 1);
-- First, just create and populate departments
CREATE TABLE IF NOT EXISTS departments (
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(50),
    location VARCHAR(50)
);

-- Clear existing data from tables (in correct order due to potential foreign key constraints)
DELETE FROM employees;
DELETE FROM departments;

-- Insert fresh data into departments
INSERT INTO departments VALUES 
(1, 'IT', 'New York'),
(2, 'HR', 'Chicago'),
(3, 'Finance', 'Boston'),
(4, 'Marketing', 'Los Angeles');

-- Insert fresh data into employees
INSERT INTO employees VALUES 
(1, 'John Smith', 75000, 1, '2020-01-15'),
(2, 'Jane Doe', 65000, 2, '2019-03-20'),
(3, 'Mike Johnson', 82000, 1, '2018-06-10'),
(4, 'Sarah Wilson', 55000, 3, '2021-02-28'),
(5, 'Tom Brown', 90000, 4, '2017-11-05'),
(6, 'Lisa Davis', 72000, 2, '2020-08-12'),
(7, 'Robert Lee', 68000, 3, '2019-09-30');
-- Use REPLACE to handle duplicate keys
REPLACE INTO departments VALUES 
(1, 'IT', 'New York'),
(2, 'HR', 'Chicago'),
(3, 'Finance', 'Boston'),
(4, 'Marketing', 'Los Angeles');

REPLACE INTO employees VALUES 
(1, 'John Smith', 75000, 1, '2020-01-15'),
(2, 'Jane Doe', 65000, 2, '2019-03-20'),
(3, 'Mike Johnson', 82000, 1, '2018-06-10'),
(4, 'Sarah Wilson', 55000, 3, '2021-02-28'),
(5, 'Tom Brown', 90000, 4, '2017-11-05'),
(6, 'Lisa Davis', 72000, 2, '2020-08-12'),
(7, 'Robert Lee', 68000, 3, '2019-09-30');
-- Use REPLACE to handle duplicate keys
REPLACE INTO departments VALUES 
(1, 'IT', 'New York'),
(2, 'HR', 'Chicago'),
(3, 'Finance', 'Boston'),
(4, 'Marketing', 'Los Angeles');

REPLACE INTO employees VALUES 
(1, 'John Smith', 75000, 1, '2020-01-15'),
(2, 'Jane Doe', 65000, 2, '2019-03-20'),
(3, 'Mike Johnson', 82000, 1, '2018-06-10'),
(4, 'Sarah Wilson', 55000, 3, '2021-02-28'),
(5, 'Tom Brown', 90000, 4, '2017-11-05'),
(6, 'Lisa Davis', 72000, 2, '2020-08-12'),
(7, 'Robert Lee', 68000, 3, '2019-09-30');
-- Drop tables if they exist and recreate them
DROP TABLE IF EXISTS employees;
DROP TABLE IF EXISTS departments;

-- Create departments table
CREATE TABLE departments (
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(50),
    location VARCHAR(50)
);

-- Create employees table
CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50),
    salary DECIMAL(10,2),
    dept_id INT,
    hire_date DATE
);

-- Insert sample data
INSERT INTO departments VALUES 
(1, 'IT', 'New York'),
(2, 'HR', 'Chicago'),
(3, 'Finance', 'Boston'),
(4, 'Marketing', 'Los Angeles');

INSERT INTO employees VALUES 
(1, 'John Smith', 75000, 1, '2020-01-15'),
(2, 'Jane Doe', 65000, 2, '2019-03-20'),
(3, 'Mike Johnson', 82000, 1, '2018-06-10'),
(4, 'Sarah Wilson', 55000, 3, '2021-02-28'),
(5, 'Tom Brown', 90000, 4, '2017-11-05'),
(6, 'Lisa Davis', 72000, 2, '2020-08-12'),
(7, 'Robert Lee', 68000, 3, '2019-09-30');
-- Drop tables if they exist and recreate them
DROP TABLE IF EXISTS employees;
DROP TABLE IF EXISTS departments;

-- Create departments table
CREATE TABLE departments (
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(50),
    location VARCHAR(50)
);

-- Create employees table
CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50),
    salary DECIMAL(10,2),
    dept_id INT,
    hire_date DATE
);

-- Insert sample data
INSERT INTO departments VALUES 
(1, 'IT', 'New York'),
(2, 'HR', 'Chicago'),
(3, 'Finance', 'Boston'),
(4, 'Marketing', 'Los Angeles');

INSERT INTO employees VALUES 
(1, 'John Smith', 75000, 1, '2020-01-15'),
(2, 'Jane Doe', 65000, 2, '2019-03-20'),
(3, 'Mike Johnson', 82000, 1, '2018-06-10'),
(4, 'Sarah Wilson', 55000, 3, '2021-02-28'),
(5, 'Tom Brown', 90000, 4, '2017-11-05'),
(6, 'Lisa Davis', 72000, 2, '2020-08-12'),
(7, 'Robert Lee', 68000, 3, '2019-09-30');
-- Verify our data is there
SELECT * FROM departments;
SELECT * FROM employees;

-- If data looks good, proceed with subquery practice!
SELECT * FROM departments;
SELECT * FROM employees;