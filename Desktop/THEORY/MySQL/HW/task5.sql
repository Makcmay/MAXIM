USE mmm;
CREATE TABLE cars
(
	id INT NOT NULL PRIMARY KEY,
    name VARCHAR(45),
    cost INT
);

INSERT cars
VALUES
	(1, "Audi", 52642),
    (2, "Mercedes", 57127 ),
    (3, "Skoda", 9000 ),
    (4, "Volvo", 29000),
	(5, "Bentley", 350000),
    (6, "Citroen ", 21000 ), 
    (7, "Hummer", 41400), 
    (8, "Volkswagen ", 21600);
    
SELECT *
FROM cars;


-- 1.	Чтобы создать представление, в которое попадут автомобили стоимостью до 25 000 долларов, нужно использовать следующий запрос:

CREATE VIEW cars_under_25000 AS
SELECT *
FROM cars
WHERE cost < 25000;

-- 2.	Чтобы изменить порог для стоимости в существующем представлении, можно использовать оператор ALTER VIEW. В данном случае, чтобы изменить представление cars_under_25000 и установить порог для стоимости до 30 000 долларов, используем следующий запрос:

ALTER VIEW cars_under_25000 AS
SELECT *
FROM cars
WHERE cost < 30000;

-- 3.	Чтобы создать представление, в котором будут только автомобили марки "Шкода" и "Ауди", используем следующий запрос:

CREATE VIEW skoda_audi_cars AS
SELECT *
FROM cars
WHERE name IN ('Skoda', 'Audi');	

-- Теперь есть три представления: cars_under_25000, cars_under_30000 (измененное представление), и skoda_audi_cars. Моэжно обращаться к ним в базе данных.

-- Например, чтобы выбрать данные из представления "cars_under_25000", вможно использовать следующий запрос:

SELECT *
FROM cars_under_25000;

-- Аналогично, для представления "skoda_and_audi_cars" можно использовать следующий запрос:

SELECT *
FROM skoda_audi_cars;
