--task001: Создайте таблицу с мобильными телефонами, используя графический интерфейс.
--Id, ProductName, Manufacturer, ProductCount, Price
--Заполните БД данными.
CREATE DATABASE homework_1;
USE homework_1;
CREATE TABLE Phones (
    Id INT PRIMARY KEY AUTO_INCREMENT,
    ProductName VARCHAR(20) NOT NULL,
    Manufacturer VARCHAR(20) NOT NULL,
    ProductCount INT DEFAULT 0,
    Price INT
);
INSERT INTO Phones (ProductName, Manufacturer, ProductCount, Price)
VALUES
('iPhone 11', 'Apple', 3, 56000),
('iPhone X', 'Apple', 2, 41000),
('Galaxy S9', 'Samsung', 2, 36000),
('Galaxy S8', 'Samsung', 1, 21000),
('P20 Pro', 'Huawei', 5, 16000);

--task002: Выведите название, производителя и цену для товаров, количество которых превышает 2
SELECT ProductName, Manufacturer, Price FROM Phones WHERE ProductCount > 2;

--task003: Выведите весь ассортимент товаров марки “Samsung”.
SELECT * FROM Phones WHERE Manufacturer = 'Samsung';

--task004:*** С помощью регулярных выражений найти:
--Товары, в наименовании которых есть упоминание "Iphone"
SELECT * FROM Phones WHERE ProductName LIKE '%Iphone%';
--Товары, в наименовании которых есть упоминание "Samsung"
SELECT * FROM Phones WHERE ProductName LIKE '%Samsung%';
--Товары, в наименовании которых есть ЦИФРЫ
SELECT * FROM Phones WHERE ProductName RLIKE '[0-9]';
--Товары, в наименовании которых есть ЦИФРА "8"
SELECT * FROM Phones WHERE ProductName LIKE '%8%';