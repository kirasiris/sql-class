/*
*
Write an INSERT statement that adds this row to the Products table:

ProductID:	The next automatically generated ID
CategoryID:	4
ProductCode:	dgx_640
ProductName:	Yamaha DGX 640 88-Key Digital Piano
Description:	Long description to come.
ListPrice:	799.99
DiscountPercent:	0
DateAdded:	Today's date/time


Use a column list for this statement.

Include an appropriate SELECT statement to verify the table has been modified correctly.
*
*
* 07/19/20
* BY Kevin Uriel Azuara Fonseca
*
*/

INSERT INTO Products (CategoryID, ProductCode, ProductName, Description, ListPrice, DiscountPercent, DateAdded) VALUES (
	4,
	'dgx_640',
	'Yamaha DGX 640 88-Key Digital Piano',
	'Long description to come.',
	799.99,
	0,
	GETDATE()
)

-- DELETE Products WHERE ProductID = 11;

SELECT * FROM Products;