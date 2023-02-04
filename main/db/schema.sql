DROP DATABASE IF EXISTS tracker_db;

CREATE DATABASE  tracker_db;

USE  tracker_db;


CREATE TABLE departments (
    id INT  UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(30) UNIQUE NOT NULL
);

--roles
CREATE TABLE roles (
    id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(30) NOT NULL,
    salary DECIMAL UNSIGNED NOT NULL,
    departments_id INT UNSIGNED NOT NULL,
INDEX dep_ind (departments_id),
   CONSTRAINT fk_departments FOREIGN KEY (departments_id)
     REFERENCES departments (id)
     ON DELETE  CASCADE
);


CREATE TABLE employees (
     id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
     first_name VARCHAR(30) NOT NULL,
     last_name VARCHAR(30) NOT NULL,
     roles_id INT UNSIGNED NOT NULL,
     INDEX role_ind (roles_id),
     CONSTRAINT fk_roles FOREIGN KEY (roles_id) REFERENCES roles(id)ON DELETE CASCADE,
      manager_id INT UNSIGNED,
      INDEX manager_ind (manager_id),
      CONSTRAINT fk_manager FOREIGN KEY (manager_id) REFERENCES employees(id) ON DELETE SET NULL
    --   there is an error in this area need to fix
);