mysql> create table job_historyQ14 (
    -> employee_id int primary key,
    -> start_date DATE,
    -> end_date DATE,
    -> job_id int,
    -> department_id int,
    -> foreign key (job_id)
    -> references jobs(job_id)
    -> );
Query OK, 0 rows affected (0.02 sec)

mysql> desc job_historyQ14;
+---------------+------+------+-----+---------+-------+
| Field         | Type | Null | Key | Default | Extra |
+---------------+------+------+-----+---------+-------+
| employee_id   | int  | NO   | PRI | NULL    |       |
| start_date    | date | YES  |     | NULL    |       |
| end_date      | date | YES  |     | NULL    |       |
| job_id        | int  | YES  | MUL | NULL    |       |
| department_id | int  | YES  |     | NULL    |       |
+---------------+------+------+-----+---------+-------+
5 rows in set (0.00 sec)

mysql>
