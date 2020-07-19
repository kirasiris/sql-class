/*
*
Write a SELECT statement that returns the same result set as this SELECT statement, but don't use a join. Instead, use a subquery in a WHERE clause that uses the IN keyword.

SELECT DISTINCT CategoryName
FROM Categories c JOIN Products p
ON c.CategoryID = p.CategoryID
ORDER BY CategoryName
*
*
* 07/19/20
* BY Kevin Uriel Azuara Fonseca
*
*/

--SELECT DISTINCT CategoryName
--FROM Categories c JOIN Products p
--ON c.CategoryID = p.CategoryID
--ORDER BY CategoryName


SELECT DISTINCT
	CategoryName
FROM
	Categories c
WHERE
	c.CategoryID in (SELECT p.CategoryID from Products p)
ORDER BY
	CategoryName