-- Сколько товаров в категории Meat/Poultry.

SELECT 
	CASE
		WHEN ProductName LIKE '%meat%' THEN 'Meat'
		WHEN ProductName LIKE '%poultry%' THEN 'Poultry'
	END AS category,
	ProductName, 
	COUNT(*) AS cnt
FROM Products
WHERE category in ('Meat', 'Poultry')
GROUP BY category