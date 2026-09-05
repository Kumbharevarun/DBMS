--when using with creation of table

CREATE TABLE employeesQ18 (
    employee_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    job_id INT,
    salary DECIMAL(8,2),

    FOREIGN KEY (job_id)
    REFERENCES jobs(job_id)
    ON DELETE CASCADE
    ON UPDATE RESTRICT
) ENGINE=InnoDB;

      ------------------or-------------------------

mysql> ALTER TABLE employees
    -> ADD FOREIGN KEY (job_id)
    -> REFERENCES jobs(job_id)
    -> ON DELETE CASCADE
    -> ON UPDATE RESTRICT;
Query OK, 0 rows affected (0.04 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql>
