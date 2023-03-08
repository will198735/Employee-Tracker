INSERT INTO departments (name)
VALUES ('sales'),
       ('ingeneering'),
       ('manager');



INSERT INTO roles (title, salary, departments_id)
    VALUES ('Sales lead', 100000, 1),
           ('Salesperson', 80000, 1),
           ('Lead Engeneer', 150000, 2),
           ('Software Engeneer', 120000, 2),
           ('Acount manager', 160000, 3),
           ('Acountant', 1250000, 3),
           ('Legal Team Lead', 250000,4),
           ('Lawyer', 190000, 4);
                    
          
          
        
INSERT INTO employees (first_name, last_name, roles_id, manager_id)



VALUES     ('John', 'Doe', 1, NUll),
           ('Mike', 'Chan', 2),
           ('Ashley', 'Rodriguez', 3, NULL),
           ('Kevin ', 'Topik ', 4, 3),
           ('Kunal ', 'Sinig ', 5, NULL),
           ('Malia', 'Brown', 6, 5),
           ('Sarah', 'Lourd' 7, NULL),
           ('Tom', 'Allen', 8, 7);
