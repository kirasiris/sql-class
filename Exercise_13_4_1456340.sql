/*
*
*
Create a view named OrderItemProducts that returns columns from the Orders, OrderItems, and Products tables.

This view should return these columns from the Orders table: OrderID, OrderDate, TaxAmount, and ShipDate.

This view should return these columns from the OrderITems table: ItemPrice, DiscountAmount, FinalPrice (the discount amount subtracted from the item price), Quantity, and ItemTotal (the calculated total for the item).

This view should return the ProductName column from the Products table.
*
*
* BY Kevin Uriel Azuara Fonseca
* 08/02/20
*
*/
CREATE VIEW
	OrderItemProducts
AS
SELECT
	o.OrderID,
	OrderDate,
	TaxAmount,
	ShipDate,
	ProductName,
	ItemPrice,
	DiscountAmount,
	ItemPrice - DiscountAmount AS FinalPrice,
	Quantity,
	(ItemPrice - DiscountAmount) * Quantity AS ItemTotal
FROM
	Orders o
INNER JOIN
	OrderItems li
ON
	o.OrderID = li.OrderID
INNER JOIN
	Products p
ON
	li.ProductID = p.ProductID