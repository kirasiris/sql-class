/*
Write a SELECT statement that returns these columns from the Orders table:

The OrderDate column
A column that returns the 4-digit year that stored in the OrderDate column
A column that returns only the day of the month that's stored in the OrderDate column
A column that returns the result from adding thirty days to the OrderDate column
*
*
* BY Kevin Uriel Azuara Fonseca
* 07/19/20
*/

SELECT
	OrderDate,
	YEAR(OrderDate) AS 'Years',
	DAY(OrderDate) AS 'Days',
	DATEADD(DAY, 13, OrderDate) AS 'NewDate'
FROM
	Orders;