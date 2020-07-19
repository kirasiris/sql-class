/*
*
Use a correlated subquery to return one row per customer, representing the customer's oldest order (the one with the earliest date). Each row should include these three columns:

EmailAddress
OrderID
OrderDate

*
*
* 07/19/20
* BY Kevin Uriel Azuara Fonseca
*
*/

SELECT
	EmailAddress, OrderID, OrderDate
FROM
	Customers c
INNER JOIN
	Orders o
ON
	c.CustomerID = o.CustomerID
WHERE
	o.OrderDate = (
		SELECT
			MIN(OrderDate)
		FROM
			Orders o2
		WHERE
			c.CustomerID = o2.CustomerID)