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

CREATE USER 'admin'@'localhost' IDENTIFIED BY 'admin';

SELECT 
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


