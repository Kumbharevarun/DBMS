mysql> CREATE TABLE departments (
    ->
    ->     department_id decimal(4,0) NOT NULL ,
    ->
    ->     department_name VARCHAR(30) NOT NULL,
    ->
    ->     manager_id decimal(6,0) NOT NULL ,
    ->
    ->     location_id decimal(4,0),
    ->
    ->     PRIMARY KEY (department_id, manager_id)
    ->
    -> );
Query OK, 0 rows affected (0.02 sec)

mysql> desc departments;
+-----------------+--------------+------+-----+---------+-------+
| Field           | Type         | Null | Key | Default | Extra |
+-----------------+--------------+------+-----+---------+-------+
| department_id   | decimal(4,0) | NO   | PRI | NULL    |       |
| department_name | varchar(30)  | NO   |     | NULL    |       |
| manager_id      | decimal(6,0) | NO   | PRI | NULL    |       |
| location_id     | decimal(4,0) | YES  |     | NULL    |       |
+-----------------+--------------+------+-----+---------+-------+
4 rows in set (0.00 sec)

mysql> CREATE TABLE employees (
    ->     employee_id INT PRIMARY KEY,
    ->     first_name VARCHAR(50),
    ->     last_name VARCHAR(50),
    ->     email VARCHAR(70) UNIQUE,
    ->     phone_number VARCHAR(20),
    ->     hire_date DATE,
    ->     job_id INT,
    ->     salary DECIMAL(8,2),
    ->     commission DECIMAL(8,2),
    ->     manager_id DECIMAL(6,0),
    ->     department_id DECIMAL(4,0),
    ->
    ->     FOREIGN KEY (department_id, manager_id)
    ->     REFERENCES departments(department_id, manager_id)
    -> );
Query OK, 0 rows affected (0.03 sec)

mysql> desc employees;
+---------------+--------------+------+-----+---------+-------+
| Field         | Type         | Null | Key | Default | Extra |
+---------------+--------------+------+-----+---------+-------+
| employee_id   | int          | NO   | PRI | NULL    |       |
| first_name    | varchar(50)  | YES  |     | NULL    |       |
| last_name     | varchar(50)  | YES  |     | NULL    |       |
| email         | varchar(70)  | YES  | UNI | NULL    |       |
| phone_number  | varchar(20)  | YES  |     | NULL    |       |
| hire_date     | date         | YES  |     | NULL    |       |
| job_id        | int          | YES  |     | NULL    |       |
| salary        | decimal(8,2) | YES  |     | NULL    |       |
| commission    | decimal(8,2) | YES  |     | NULL    |       |
| manager_id    | decimal(6,0) | YES  |     | NULL    |       |
| department_id | decimal(4,0) | YES  | MUL | NULL    |       |
+---------------+--------------+------+-----+---------+-------+
11 rows in set (0.00 sec)

mysql>
