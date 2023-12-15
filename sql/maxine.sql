
/* Lรถsungsbeispiel CodeLab */

-- Login @admin
mysql -u admin -p

 -- Anlegen allg. USER
 CREATE USER 'maxine'@'localhost' IDENTIFIED BY 'maxine';
 
 -- READ
 GRANT 
     SELECT #READ
     ON mydb.employees
     TO 'maxine'@'localhost';

FLUSH PRIVILEGES;

SHOW GRANTS FOR 'maxine'@'localhost';

-- Login @maxine
mysql -u maxine -p

SELECT * FROM mydb.employees; #OK
SELECT * FROM mydb.countries; #ERROR

-- Login @admin
mysql -u admin -p

 -- CREATE / UPDATE / DELETE
 GRANT 
     CREATE, UPDATE, DELETE
     ON mydb.employees
     TO 'maxine'@'localhost';
     
FLUSH PRIVILEGES;

SHOW GRANTS FOR 'maxine'@'localhost';

-- Login @maxine
mysql -u maxine -p

-- UPDATE
UPDATE mydb.employees 
SET 
    salary = 80000.00
WHERE
    employee_id = 432;
    
SELECT * FROM mydb.employees WHERE employee_id = 432; 

-- DELETE
DELETE FROM mydb.employees WHERE employee_id = 123;
SELECT * FROM mydb.employees; 

DROP TABLE mydb.employees; # ERROR

-- USER loeschen

-- Login @admin
mysql -u admin -p

DROP USER 'maxine'@'localhost';
SELECT USER FROM mysql.user;
