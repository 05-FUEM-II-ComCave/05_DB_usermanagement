 -- Vorbereitungen

SHOW DATABASES;
USE mydb -A;
SHOW TABLES;
SELECT * FROM mydb.employees;
SELECT * FROM mydb.countries;
 
 -- wer sind wir in mySQL
SELECT user();

-- user-Tabelle
SHOW DATABASES;
USE mysql;
SHOW TABLES;
 
DESCRIBE mysql.user;

SELECT
user,
authentication_string
FROM mysql.user;

-- USER ANLEGEN

CREATE USER 'admin'@'localhost' IDENTIFIED BY 
  user, 
  authentication_string 
FROM mysql.user;

-- plugind anzeigen

SELECT 
  user, 
  plugin 
FROM mysql.user;

-- Rechte (privilegien) zuweisen
GRANT ALL PRIVILEGES ON *.* TO 'admin'@'localhost' WITH GRANT OPTION;

-- update der Berechtigungen
FLUSH PRIVILEGES;

-- als mySQL root abmelden
EXIT

-- unter LINUX als admin in mySQL anmelden

mysql -u admin -p

mysql_native_password
caching_sha2_password

-- welche Rechte habe ich?
SHOW GRANTS FOR 'admin'@'localhost';

-- Anlegen allg. USER
CREATE USER 'max'@'localhost' IDENTIFIED BY 'max';

mysql -u max -p

SHOW GRANTS FOR 'max'@'localhost';

GRANT ALL PRIVILEGES ON *.* TO
'admin'@'localhost' WITH GRANT OPTION;

FLUSH PRIVILEGES;

GRANT
  SHOW DATABASES, SELECT
  ON *.*
  TO 'max'@'localhost';
  
  -- login als max
SHOW DATABASES;
SELECT * FROM mydb.employees;
SELECT * FROM mydb.countries;
  
    -- keine Berechtigung
DROP TABLE mydb.employees;

GRANT
  DROP
  ON mydb.*
  TO 'max'@'localhost';
  
  FLUSH PRIVILEGES;
  
REVOKE
  DROP
  ON mydb.*
  TO 'max'@'localhost';

FLUSH PRIVILEGES;

SHOW GRANTS FOR 'max'@'localhost';

DROP USER 'max'@'localhost';


CREATE USER 'maxine'@'localhost' IDENTIFIED BY 'maxine';
CREATE USER If NOT EXISTS 'maxine'@'localhost' IDENTIFIED BY 'maxine';

GRANT SELECT ON *.* TO 'maxine'@'localhost';

GRANT ALTER ON mydb.* TO 'maxine'@'localhost';

GRANT ALL PRIVILEGES ON mydb.* TO 'maxine'@'localhost';

SHOW TABLE mydb.*;


mysql -u maxine -p

SHOW GRANTS FOR 'maxine'@'localhost';
