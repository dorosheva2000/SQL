--Посчитайте среднюю цену и общее количество товаров в категории с идентификатором 5.

SELECT
AVG(Price) AS [avarage price],
COUNT(*) AS [counts of products]
FROM Products
WHERE CategoryID = 5