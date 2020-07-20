/*
Write a SELECT statement that returns these columns from the Orders table:

The OrderID column
The OrderDate column
A column named ApproxShipDate that's calculated by adding 2 days to the OrderDate column
The ShipDate column
A column named DaysToShip that shows the number of days between the order date and the ship date
When you have this working, add a WHERE clause that retrieves just the orders for March 2016.
*
*
* BY Kevin Uriel Azuara Fonseca
* 07/19/20
*/

SELECT
	OrderID,
	OrderDate,
	DATEADD(DAY, 2, OrderDate) AS 'ApproxShipDate',
	ShipDate,
	DATEDIFF(DAY,OrderDate,DATEADD(DAY,2,OrderDate)) as DaysToShip
FROM
	Orders
 WHERE
	YEAR(OrderDate) = 2013 AND MONTH(OrderDate) = 3;