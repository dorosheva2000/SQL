--Найдите количество заказов за январь 2024 года, используя оператор LIKE для фильтрации даты.

SELECT
COUNT(*)
FROM Orders
WHERE OrderDate LIKE '%2024-01%'