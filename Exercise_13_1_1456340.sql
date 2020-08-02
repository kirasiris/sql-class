/*
*
*
Create a view named CustomerAddresses that shows the shipping and billing addresses for each customer in the MyGuitarShop database.

This view should return these columns from the Customers table: CustomerID, EmailAddress, LastName and FirstName.

This view should return these columns from the Addresses table: BillLine1, BillLine2, BillState, BillZip, ShipLine1, ShipLine2, ShipCity, ShipState, and ShipZip.

Use the BillingAddressID and ShippingAddressID columns in the Customers table to determine which addresses are billing addresses and which are shipping addresses.

Hint: You can use two JOIN clauses to join the Addresses table to Customers table twhic (once for each type of address).
*
*
* BY Kevin Uriel Azuara Fonseca
* 08/02/20
*
*/

CREATE VIEW
	CustomerAddresses
AS
SELECT
	c.CustomerID, EmailAddress, LastName, FirstName, ba.Line1
AS
	BillLine1, ba.Line2
AS
	BillLine2, ba.City
AS
	BillCity, ba.State
AS
	BillState, ba.ZipCode
AS
	BillZip, sa.Line1
AS
	ShipLine1, sa.Line2
AS
	ShipLine2, sa.City
AS
	ShipCity, sa.State
AS 
	ShipState, sa.ZipCode
AS 
	ShipZip
FROM
	Customers c
INNER JOIN Addresses ba
ON
	c.BillingAddressID  = ba.AddressID
INNER JOIN Addresses sa
ON
	c.ShippingAddressID = sa.AddressID