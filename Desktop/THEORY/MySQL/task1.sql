-- Active: 1684784212243@@127.0.0.1@3306@mmm

-- Создайте таблицу с мобильными телефонами:
CREATE TABLE phones (
  id INT PRIMARY KEY AUTO_INCREMENT,
  name VARCHAR(50) NOT NULL,
  manufacturer VARCHAR(50) NOT NULL,
  price DECIMAL(8,2) NOT NULL,
  quantity INT NOT NULL

-- Заполните БД данными:
);INSERT INTO phones (name, manufacturer, price, quantity)
VALUES
('iPhone 12', 'Apple', 999.99, 5),
('Galaxy S21', 'Samsung', 799.99, 3),
('Pixel 5', 'Google', 699.99, 10),
('OnePlus 9 Pro', 'OnePlus', 899.99, 2),
('Mi 11', 'Xiaomi', 799.99, 7),
('ZenFone 8', 'ASUS', 699.99, 4),
('P40 Pro', 'Huawei', 1099.99, 1),
('Moto G Power', 'Motorola', 249.99, 8);

-- Выведите название, производителя и цену для товаров, количество которых превышает 2:
SELECT name, manufacturer, price
FROM phones
WHERE quantity > 2;

-- Выведите весь ассортимент товаров марки "Samsung":
SELECT *
FROM phones
WHERE manufacturer = 'Samsung';

-- С помощью регулярных выражений найдите:
-- 4.1. Товары, в которых есть упоминание "iPhone":

SELECT *
FROM phones
WHERE name REGEXP 'iPhone';

-- 4.2. Товары, в которых есть упоминание "Samsung":
SELECT *
FROM phones
WHERE name REGEXP 'Samsung';


-- 4.3. Товары, в которых есть цифра "8":
SELECT *
FROM phones
WHERE name REGEXP '[[:digit:]]*8[[:digit:]]*';
