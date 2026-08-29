mysql> create table jobs(
    -> job_id int,
    -> job_title varchar(100),
    -> min_salary int,
    -> max_salary int);
Query OK, 0 rows affected (0.02 sec)

mysql> alter table jobs
    -> add constraint chksal
    -> check (max_salary <= 25000);
Query OK, 0 rows affected (0.09 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> desc jobs;
+------------+--------------+------+-----+---------+-------+
| Field      | Type         | Null | Key | Default | Extra |
+------------+--------------+------+-----+---------+-------+
| job_id     | int          | YES  |     | NULL    |       |
| job_title  | varchar(100) | YES  |     | NULL    |       |
| min_salary | int          | YES  |     | NULL    |       |
| max_salary | int          | YES  |     | NULL    |       |
+------------+--------------+------+-----+---------+-------+
4 rows in set (0.00 sec)

mysql> insert INTO jobs VALUES (1,'job1',100,21000);
Query OK, 1 row affected (0.01 sec)

mysql> insert INTO jobs VALUES (1,'job1',100,29000);
ERROR 3819 (HY000): Check constraint 'chksal' is violated.
mysql> desc jobs;
+------------+--------------+------+-----+---------+-------+
| Field      | Type         | Null | Key | Default | Extra |
+------------+--------------+------+-----+---------+-------+
| job_id     | int          | YES  |     | NULL    |       |
| job_title  | varchar(100) | YES  |     | NULL    |       |
| min_salary | int          | YES  |     | NULL    |       |
| max_salary | int          | YES  |     | NULL    |       |
+------------+--------------+------+-----+---------+-------+
4 rows in set (0.00 sec)

mysql>
