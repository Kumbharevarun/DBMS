mysql> create TABLE countriesQ12(
    -> country_id int PRIMARY KEY AUTO_INCREMENT,
    -> country_name varchar(50),
    -> region_id int
    -> );
Query OK, 0 rows affected (0.02 sec)

mysql> desc countriesQ12;;
+--------------+-------------+------+-----+---------+----------------+
| Field        | Type        | Null | Key | Default | Extra          |
+--------------+-------------+------+-----+---------+----------------+
| country_id   | int         | NO   | PRI | NULL    | auto_increment |
| country_name | varchar(50) | YES  |     | NULL    |                |
| region_id    | int         | YES  |     | NULL    |                |
+--------------+-------------+------+-----+---------+----------------+
3 rows in set (0.00 sec)
