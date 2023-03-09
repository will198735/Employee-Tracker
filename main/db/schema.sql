DROP DATABASE if EXISTS company_db;
CREATE DATABASE company_db;
 
 USE company_db; 


 CREATE TABLE departments (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(30) NOT NULL

 );

 CREATE TABLE roles (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(30),
    salary DECIMAL,
    department_id INT,
    Foreign Key (department_id) REFERENCES departments (id) ON DELETE SET NULL
 );

 CREATE TABLE employees (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(30) NOT NULL,
    last_name VARCHAR(30) NOT NULL,
    role_id INT,
    manager_id INT,
    Foreign Key (role_id) REFERENCES roles (id) ON DELETE SET NULL,
    Foreign Key (manager_id) REFERENCES employees(id) ON DELETE SET NULL
 );
