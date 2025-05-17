--Определите количество заказов, сделанных в ноябре 2023 года, используя начальную и конечную дату месяца.

SELECT 
COUNT(OrderID)
FROM Orders
WHERE DATE(OrderDate) BETWEEN DATE('2023-11-01') AND DATE('2023-11-30')
