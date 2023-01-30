DROP DATABASE IF EXISTS tracker_db;

CREATE DATABASE  tracker_db;

USE  tracker_db;


CREATE TABLE departments (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    deparment_name VARCHAR(30) NOT NULL
);


CREATE TABLE roles (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    role_title VARCHAR(30) NOT NULL,
    role_salary DECIMAL NOT NULL,
    FOREIGN KEY (departments_id)
     REFERENCES departments (id)
     ON DELETE SET NULL 
);


CREATE TABLE employees (
     id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
     first_name VARCHAR(30) NOT NULL,
     last_name VARCHAR(30) NOT NULL,
     FOREIGN KEY (roles_id)
      REFERENCES roles(id)
      ON DELETE SET NULL
      
);