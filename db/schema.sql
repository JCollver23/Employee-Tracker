\c postgres;

DROP DATABASE IF EXISTS employeedatabase;
Create DATABASE employeedatabase;

\c employeedatabase;

CREATE TABLE department (
    id SERIAL PRIMARY KEY,
    name VARCHAR(30)
);

CREATE TABLE role (
    id SERIAL PRIMARY KEY,
    title VARCHAR(30),
    salary DECIMAL(10, 2),
    department_id INT,
    FOREIGN KEY (department_id) REFERENCES department(id)
);

CREATE TABLE employee (
    id SERIAL PRIMARY KEY,
    first_name VARCHAR(30),
    last_name VARCHAR(30),
    role_id INT,
    manager_id INT NULL,
    FOREIGN KEY (role_id) REFERENCES role(id),
    FOREIGN KEY (manager_id) REFERENCES employee(id)
    ON DELETE SET NULL
);
