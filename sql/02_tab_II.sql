
DROP TABLE IF EXISTS mydb.countries;

CREATE TABLE mydb.countries (
  id INT NOT NULL AUTO_INCREMENT,
  country VARCHAR(100) NOT NULL,
  capital VARCHAR(100) NOT NULL,
  population INT NOT NULL,
  PRIMARY KEY (id)
);

DESCRIBE mydb.countries;

INSERT INTO mydb.countries  (country, capital, population) VALUES 
('Egypt', 'Cairo', 100000000),
('Saudi Arabia', 'Riyadh', 34000000),
('Iraq', 'Baghdad', 40000000),
('Morocco', 'Rabat', 36000000),
('Algeria', 'Algiers', 43000000),
('Tunisia', 'Tunis', 12000000),
('Jordan', 'Amman', 10000000),
('Lebanon', 'Beirut', 7000000),
('Oman', 'Muscat', 5000000),
('Qatar', 'Doha', 3000000);

SELECT * FROM mydb.countries;