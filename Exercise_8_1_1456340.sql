/*
Write a SELECT statement that returns these columns from the Products table:

The ListPrice column
A column that uses the CAST function to return the ListPrice column with 1 digit to the right of the decimal point
A column that uses the CONVERT function to return the ListPrice column as an integer
A column that uses the CAST function to return the ListPrice column as an integer
*
*
* BY Kevin Uriel Azuara Fonseca
* 07/19/20
*/

SELECT
	ListPrice,
	CAST(ListPrice AS decimal(10, 1)) AS DoubleListPrice,
	CONVERT(int, ListPrice) AS CIntListPrice,
	CAST(ListPrice AS int) AS IntListPrice
FROM
	Products