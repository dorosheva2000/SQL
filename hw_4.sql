/*1. Ранжируйте продукты (по ProductRank) в каждой категории на основе их общего объема продаж (TotalSales).*/

SELECT
	CategoryID,
	ProductName,
	SUM(Price * Quantity) AS TotalSales,
	DENSE_RANK() OVER (PARTITION BY CategoryID ORDER BY SUM(Price * Quantity) DESC) AS ProductRank
FROM Products AS p
JOIN OrderDetails AS od ON p.ProductID = od.ProductID 
GROUP BY CategoryID, od.ProductID


/*2. Обратимся к таблице Clusters 
 Рассчитайте среднюю сумму кредита (AvgCreditAmount) для каждого кластера и месяца, 
 учитывая общую среднюю сумму кредита за соответствующий месяц (OverallAvgCreditAmount). 
 Определите OverallAvgCreditAmount в первой строке результатов запроса.*/


SELECT DISTINCT 
	AVG(credit_amount) OVER (PARTITION BY month) AS OverallAvgCreditAmount,
	month,
	cluster,
	AVG(credit_amount) OVER (PARTITION BY month, cluster) AS AvgCreditAmount
FROM Clusters



/*3.Сопоставьте совокупную сумму сумм кредита (CumulativeSum) для каждого кластера, упорядоченную по месяцам, 
 и сумму кредита в порядке возрастания. 
 Определите CumulativeSum в первой строке результатов запроса*/

SELECT 
	SUM(credit_amount) OVER (PARTITION MY )
FROM Clusters

--Как вы сформулировали задание? Вы его читали вообще??????








