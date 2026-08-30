mysql> CREATE TABLE jobsQ10 (
    -> job_id int,
    -> job_title varchar(50) default " ",
    -> min_salary int default 8000,
    -> max_salary int default NULL
    -> );
Query OK, 0 rows affected (0.02 sec)

mysql> desc jobsQ10;
+------------+-------------+------+-----+---------+-------+
| Field      | Type        | Null | Key | Default | Extra |
+------------+-------------+------+-----+---------+-------+
| job_id     | int         | YES  |     | NULL    |       |
| job_title  | varchar(50) | YES  |     |         |       |
| min_salary | int         | YES  |     | 8000    |       |
| max_salary | int         | YES  |     | NULL    |       |
+------------+-------------+------+-----+---------+-------+
4 rows in set (0.00 sec)

mysql>
