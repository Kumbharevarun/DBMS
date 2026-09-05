mysql> create table countriesQ7 (
    ->     country_id INT,
    ->     country_name VARCHAR(50),
    -> region_id int,
    ->     CHECK (country_name IN ('Italy', 'India', 'China'))
    -> );
Query OK, 0 rows affected (0.02 sec)

mysql> desc countriesQ7;
+--------------+-------------+------+-----+---------+-------+
| Field        | Type        | Null | Key | Default | Extra |
+--------------+-------------+------+-----+---------+-------+
| country_id   | int         | YES  |     | NULL    |       |
| country_name | varchar(50) | YES  |     | NULL    |       |
| region_id    | int         | YES  |     | NULL    |       |
+--------------+-------------+------+-----+---------+-------+
3 rows in set (0.00 sec)

mysql> insert into countriesQ7 values (1007, 'nepal' , 7);
ERROR 3819 (HY000): Check constraint 'countriesq7_chk_1' is violated.
mysql>
