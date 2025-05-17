-- Вычислите средний возраст сотрудников на дату 2024-01-01.

SELECT 
AVG(DATE('2024-01-01') - DATE(BirthDate)) AS [avarage age]
FROM Employees