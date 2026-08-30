mysql> desc jobs;
+------------+--------------+------+-----+---------+-------+
| Field      | Type         | Null | Key | Default | Extra |
+------------+--------------+------+-----+---------+-------+
| job_id     | int          | NO   | PRI | NULL    |       |
| job_title  | varchar(100) | YES  |     | NULL    |       |
| min_salary | int          | YES  |     | NULL    |       |
| max_salary | int          | YES  |     | NULL    |       |
+------------+--------------+------+-----+---------+-------+
4 rows in set (0.00 sec)

mysql> ALTER TABLE employees
    -> ADD FOREIGN KEY (job_id)
    -> REFERENCES jobs(job_id);
Query OK, 0 rows affected (0.05 sec)
Records: 0  Duplicates: 0  Warnings: 0

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
| job_id        | int          | YES  | MUL | NULL    |       |
| salary        | decimal(8,2) | YES  |     | NULL    |       |
| commission    | decimal(8,2) | YES  |     | NULL    |       |
| manager_id    | decimal(6,0) | YES  |     | NULL    |       |
| department_id | decimal(4,0) | YES  | MUL | NULL    |       |
+---------------+--------------+------+-----+---------+-------+
11 rows in set (0.00 sec)

mysql>
