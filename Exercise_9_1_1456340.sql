/*
Write a SELECT statement that returns these columns from the Products table:

The ListPrice column
The DiscountPercent column
A column named DiscountAmount that uses the previous two columns to calculate the discount amount and uses the ROUND function to round the result to 2 decimal places

*
*
* BY Kevin Uriel Azuara Fonseca
* 07/19/20
*/

SELECT
	ListPrice,
	DiscountPercent,
	ROUND((ListPrice * (DiscountPercent/100)),2) AS DiscountAmount
FROM
	Products