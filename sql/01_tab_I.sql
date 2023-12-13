
DROP TABLE IF EXISTS mydb.employees;

CREATE TABLE mydb.employees (
  id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(50),
  surname VARCHAR(50),
  age INT,
  salary DECIMAL(10,2),
  employee_id INT
);

DESCRIBE mydb.employees;

INSERT INTO mydb.employees (name, surname, age, salary, employee_id)
VALUES
  ('John', 'Doe', 25, 50000.00, 123),
  ('Jane', 'Doe', 30, 60000.00, 456),
  ('Bob', 'Smith', 40, 75000.00, 789),
  ('Alice', 'Johnson', 35, 65000.00, 234),
  ('Tom', 'Jones', 45, 80000.00, 567),
  ('Sara', 'Lee', 28, 55000.00, 890),
  ('Mike', 'Brown', 50, 90000.00, 321),
  ('Emily', 'Davis', 32, 62000.00, 654),
  ('David', 'Taylor', 38, 72000.00, 987),
  ('Karen', 'Wilson', 42, 78000.00, 432);

SELECT * FROM mydb.employees;
