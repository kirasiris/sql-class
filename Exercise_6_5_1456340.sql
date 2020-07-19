/*
*
Write a SELECT statement that returns the name and discount percent of each product that has a unique discount percent. In other words, don't include products that have the same discount percent as another product.

Sort the results by the ProductName column.
*
*
* 07/19/20
* BY Kevin Uriel Azuara Fonseca
*
*/

SELECT
	p1.ProductName, p1.DiscountPercent
FROM
	Products p1
WHERE p1.DiscountPercent NOT IN (SELECT p2.DiscountPercent
     FROM Products AS p2
     WHERE p1.ProductName <> p2.ProductName)
ORDER BY
	p1.ProductName