/*
*
Write a SELECT statement that returns the CategoryName column from the Categories table.

Return one row for each category that has never been assigned to any product in the Products table. To do that, use a subquery introduced with the NOT EXISTS operator.
*
*
* 07/19/20
* BY Kevin Uriel Azuara Fonseca
*
*/

SELECT
	c.CategoryName
FROM
	Categories c
WHERE
	NOT EXISTS (SELECT 1 FROM Products p WHERE p.CategoryID = c.CategoryID)