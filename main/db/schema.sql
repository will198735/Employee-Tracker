DROP DATABASE IF EXISTS tracker_db;

CREATE DATABASE  tracker_db;

USE  tracker_db;


CREATE TABLE departments (
    id INT  UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    deparment_name VARCHAR(30) NOT NULL
);


CREATE TABLE roles (
    id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    role_title VARCHAR(30) NOT NULL,
    role_salary DECIMAL NOT NULL,
    departments_id INT UNSIGNED NOT NULL,
INDEX dep_ind (departments_id),
    FOREIGN KEY (departments_id)
     REFERENCES departments (id)
     ON DELETE  CASCADE
);


CREATE TABLE employees (
     id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
     first_name VARCHAR(30) NOT NULL,
     last_name VARCHAR(30) NOT NULL,
     roles_id INT UNSIGNED NOT NULL,
  INDEX role_ind (roles_id),
     FOREIGN KEY (roles_id)
      REFERENCES roles(id)
      ON DELETE CASCADE
      
);