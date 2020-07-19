/*
*
Write a SELECT statement that answers this question: Which products have a list price that's greater than the average list price for all products?

Return the ProductName and ListPrice columns for each product.

Sort the results by the ListPrice column in descending sequence.
*
*
* 07/19/20
* BY Kevin Uriel Azuara Fonseca
*
*/

SELECT
	ProductName, ListPrice
FROM
	Products
WHERE
	ListPrice > ( SELECT AVG(ListPrice) FROM Products )
ORDER BY
ListPrice DESC;