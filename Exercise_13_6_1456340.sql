/*
*
*
Write a SELECT statement that uses the view that you created in exercise 5 to get the total sales for the five best selling products.
*
*
* BY Kevin Uriel Azuara Fonseca
* 08/02/20
*
*/
SELECT TOP 5
	ProductName,
	OrderTotal
FROM
	ProductSummary
ORDER BY OrderTotal DESC