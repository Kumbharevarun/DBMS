mysql> create table country ( null_perimeter varchar(50) null);
Query OK, 0 rows affected (0.03 sec)

mysql> desc country;
+----------------+-------------+------+-----+---------+-------+
| Field          | Type        | Null | Key | Default | Extra |
+----------------+-------------+------+-----+---------+-------+
| null_perimeter | varchar(50) | YES  |     | NULL    |       |
+----------------+-------------+------+-----+---------+-------+
1 row in set (0.00 sec)
