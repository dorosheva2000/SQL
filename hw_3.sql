/*№ 1 
 1. Посчитать средний чек одного заказа.
 */

SELECT
	AVG(od.Quantity * p.Price) AS MeanCheck
FROM OrderDetails AS od
JOIN Products AS p ON od.ProductID = p.ProductID

/*№ 2
 Посчитать сколько заказов доставляет в месяц каждая служба доставки. 
 Определите, сколько заказов доставила United    Package в декабре 2023 года
 */
 
SELECT 
	ShipperName,
	COUNT(OrderID )
FROM Orders AS o
JOIN Shippers AS s ON o.ShipperID = s.ShipperID
GROUP BY ShipperName 

SELECT 
	ShipperName,
	COUNT(OrderID )
FROM Orders AS o
JOIN Shippers AS s ON o.ShipperID = s.ShipperID
WHERE ShipperName = 'United Package' AND OrderDate LIKE '2023-12%'


/*№ 3
 Определить средний LTV покупателя (сколько денег покупатели в среднем тратят в магазине за весь период)
  */

SELECT
 	c.Country, 
 	AVG(od.Quantity * p.Price) AS MeanLTV
 FROM Customers AS c
 JOIN Orders AS o ON c.CustomerID = o.CustomerID
 JOIN OrderDetails AS od ON o.OrderID = od.OrderID 
 JOIN Products AS p ON od.ProductID = p.ProductID 
 GROUP BY c.Country 













