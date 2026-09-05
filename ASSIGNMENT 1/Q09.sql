mysql> create TABLE countriesQ9 (country_id int UNIQUE, country_name varchar(50), region_id int);
Query OK, 0 rows affected (0.02 sec)

mysql> desc countriesQ9;
+--------------+-------------+------+-----+---------+-------+
| Field        | Type        | Null | Key | Default | Extra |
+--------------+-------------+------+-----+---------+-------+
| country_id   | int         | YES  | UNI | NULL    |       |
| country_name | varchar(50) | YES  |     | NULL    |       |
| region_id    | int         | YES  |     | NULL    |       |
+--------------+-------------+------+-----+---------+-------+
3 rows in set (0.00 sec)
