INSERT INTO department (name)
VALUES
    ('Engineering'),
    ('Finance'),
    ('Legal'),
    ('Sales');

INSERT INTO role (title, salary, department_id)
VALUES
    ('Software Engineer', 100000, 1),
    ('Accountant', 80000, 2),
    ('Lawyer', 120000, 3),
    ('Sales Associate', 80000, 4);

INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES
    ('John', 'Lennon', 1, NULL),
    ('Johnny', 'Cash', 2, 1),
    ('Hank', 'Williams', 3, 1),
    ('Lainey', 'Wilson', 4, 3);
