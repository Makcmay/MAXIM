-- Создание таблицы "sales" с помощью оператора SQL:
CREATE TABLE sales (
    id INT PRIMARY KEY,
    product_name VARCHAR(50),
    price DECIMAL(10,2),
    quantity INT
);
-- Заполнение таблицы данными:
INSERT INTO sales (id, product_name, price, quantity) VALUES
    (1, 'Product A', 10.50, 200),
    (2, 'Product B', 25.00, 50),
    (3, 'Product C', 5.99, 350),
    (4, 'Product D', 15.75, 75),
    (5, 'Product E', 100.00, 10);

-- Группировка значений количества в 3 сегмента с помощью функции IF:
SELECT 
    product_name, 
    price, 
    quantity,
    IF(quantity < 100, 'Less than 100', IF(quantity <= 300, '100-300', 'More than 300')) AS quantity_segment
FROM sales;

-- Создание таблицы "orders" и заполнение ее значениями:
CREATE TABLE orders (
    id INT PRIMARY KEY,
    order_date DATE,
    customer_name VARCHAR(50),
    total_amount DECIMAL(10,2),
    status INT
);

INSERT INTO orders (id, order_date, customer_name, total_amount, status) VALUES
    (1, '2023-05-01', 'Customer A', 150.00, 1),
    (2, '2023-05-15', 'Customer B', 500.00, 2),
    (3, '2023-05-20', 'Customer C', 75.50, 0),
    (4, '2023-05-25', 'Customer D', 250.00, NULL);

-- Отображение "полного" статуса заказа с помощью оператора CASE:
SELECT 
    id,
    order_date,
    customer_name,
    total_amount,
    CASE 
        WHEN status = 0 THEN 'Pending'
        WHEN status = 1 THEN 'Complete'
        WHEN status = 2 THEN 'Cancelled'
        ELSE 'Unknown'
    END AS status_description
FROM orders;

/* Отличие между NULL и 0 заключается в том, 
что NULL представляет отсутствие значения, 
тогда как 0 - это конкретное значение. 
В SQL NULL используется для обозначения неизвестных 
или недоступных значений, а также для обозначения пустых ячеек 
в таблице. Операции со значением NULL приводят к получению 
NULL в результате.