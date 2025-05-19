-- Какой товар (название) заказывали в сумме в самом большом количестве (sum(Quantity) в таблице OrderDetails)

SELECT 
	ProductID,
	SUM(Quantity) AS sum_quantity
FROM OrderDetails
GROUP BY ProductID 
ORDER BY sum_quantity DESC
LIMIT 1