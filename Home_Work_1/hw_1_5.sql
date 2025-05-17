-- Найдите заказы, сделанные в период с 16 января по 15 февраля 2024 года, и отсортируйте их по дате заказа.

SELECT 
OrderID,
DATE(OrderDate) AS OD
FROM Orders
WHERE OD BETWEEN DATE('2024-01-16') AND DATE('2024-02-15')
ORDER BY OD