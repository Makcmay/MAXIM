USE mmm;
-- Создайте процедуру, которая принимает кол-во сек и формат их в кол-во дней часов
-- 1.	Решение задачи:

DELIMITER //

CREATE PROCEDURE format_seconds_procedure(seconds INT)
BEGIN
    DECLARE days INT;
    DECLARE hours INT;
    DECLARE minutes INT;
    DECLARE result VARCHAR(100);

    SET days = seconds DIV (24 * 3600);
    SET seconds = seconds MOD (24 * 3600);
    SET hours = seconds DIV 3600;
    SET seconds = seconds MOD 3600;
    SET minutes = seconds DIV 60;
    SET seconds = seconds MOD 60;

    SET result = CONCAT(days, ' days ', hours, ' hours ', minutes, ' minutes ', seconds, ' seconds');
    
    SELECT result;
END //

DELIMITER ;

-- Пример вызова процедуры
CALL format_seconds_procedure(123456);


-- Вывод: '1 days 10 hours 17 minutes 36 seconds'

-- Создайте функцию, которая выводит только четные числа от 1 до 10
-- 2.	Решение задачи:

CREATE FUNCTION get_even_numbers()
RETURNS VARCHAR(100)
BEGIN
    DECLARE num INT;
    DECLARE result VARCHAR(100);

    SET result = '';

    SET num = 1;
    WHILE num <= 10 DO
        IF num % 2 = 0 THEN
            SET result = CONCAT(result, num, ', ');
        END IF;
        SET num = num + 1;
    END WHILE;
    
    SET result = SUBSTRING(result, 1, LENGTH(result) - 2); -- Удаление последней запятой и пробела

    RETURN result;
END;

-- Пример вызова функции

SELECT get_even_numbers();



-- Вывод: 2, 4, 6, 8, 10


