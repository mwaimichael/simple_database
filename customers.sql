-- creating customers table

CREATE TABLE IF NOT EXISTS customers (
    customer_id SERIAL PRIMARY KEY,
    first_name VARCHAR(25),
    last_name VARCHAR(25),
    date_of_birth DATE,
    email VARCHAR(100) GENERATED ALWAYS AS (LOWER(first_name) || '' || LOWER(last_name) || '@gmail.com') stored,
    location VARCHAR(30),
    points INT DEFAULT 0
);


INSERT INTO customers (first_name, last_name, date_of_birth, location, points)
VALUES 
('John', 'Maina', '1985-04-12', 'Nairobi', 520),
('Mercy', 'Wambui', '1990-11-05', 'Mombasa', 340),
('Kevin', 'Otieno', '1993-02-28', 'Kisumu', 710),
('Sarah', 'Cherono', '1988-07-19', 'Eldoret', 150),
('David', 'Kamau', '1995-10-03', 'Nakuru', 890),
('Grace', 'Atieno', '1992-06-15', 'Kisumu', 430),
('Peter', 'Karanja', '1982-12-01', 'Nairobi', 670),
('Faith', 'Chepkoech', '1997-03-22', 'Eldoret', 210),
('Brian', 'Ochieng', '1991-08-14', 'Kisumu', 550),
('Lucy', 'Njeri', '1989-05-30', 'Nakuru', 300),
('Samuel', 'Mwangi', '1984-09-11', 'Nairobi', 920),
('Esther', 'Muthoni', '1996-01-25', 'Mombasa', 180),
('Geoffrey', 'Kiprotich', '1990-04-09', 'Eldoret', 740),
('Alice', 'Awuor', '1994-11-17', 'Kisumu', 620),
('James', 'Omondi', '1987-02-04', 'Nairobi', 410),
('Catherine', 'Wanjiru', '1993-12-08', 'Nakuru', 500),
('Moses', 'Kibet', '1986-06-21', 'Eldoret', 830),
('Phyllis', 'Anyango', '1991-10-12', 'Kisumu', 290),
('Joseph', 'Njuguna', '1983-03-05', 'Nairobi', 760),
('Lydia', 'Kwamboka', '1995-07-27', 'Mombasa', 480),
('Patrick', 'Mutua', '1989-01-14', 'Nakuru', 315),
('Naomi', 'Wakesho', '1992-08-02', 'Mombasa', 590),
('Ezekiel', 'Kiptoo', '1994-05-18', 'Eldoret', 640),
('Mary', 'Auma', '1988-09-30', 'Kisumu', 220),
('Francis', 'Githinji', '1985-12-13', 'Nairobi', 810),
('Ruth', 'Nyaboke', '1997-02-10', 'Nakuru', 440),
('Victor', 'Odhiambo', '1990-11-23', 'Kisumu', 700),
('Diana', 'Chebet', '1996-04-07', 'Eldoret', 360),
('Simon', 'Mburu', '1982-10-15', 'Nairobi', 950),
('Rose', 'Moraa', '1993-08-19', 'Mombasa', 270);