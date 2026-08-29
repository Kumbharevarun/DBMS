mysql> create table job_history(
    ->  employee_id int,
    ->  start_date date,
    ->  end_date date NOT NULL,
    -> job_id int,
    -> department_id int);
Query OK, 0 rows affected (0.02 sec)

mysql> insert INTO job_history
    -> values (1,'2000,01,01','2026,01,01', 12,21);
Query OK, 1 row affected, 2 warnings (0.01 sec)

mysql> select * from job_history;
+-------------+------------+------------+--------+---------------+
| employee_id | start_date | end_date   | job_id | department_id |
+-------------+------------+------------+--------+---------------+
|           1 | 2000-01-01 | 2026-01-01 |     12 |            21 |
+-------------+------------+------------+--------+---------------+
1 row in set (0.00 sec)

mysql>
