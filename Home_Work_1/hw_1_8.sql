--Определите количество заказов за 2024 года, используя функцию STRFTIME для извлечения года.

SELECT 
COUNT(*)
FROM Orders
WHERE STRFTIME('%Y', OrderDate) = '2024'