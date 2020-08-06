/*
*
*
Write a script that includes two SQL statements coded as a transaction to delete the row with a customer ID of 8 from the Customers table. To do this, you must first delete all addresses for that customer from the Addresses table.

If these statements execute successfully, commit the changes. Otherwise, roll back the changes.
*
*
*
* By Kevin Uriel Azuara Fonseca
* 08/04/20
*/

USE MyGuitarShop;

DECLARE @ERROR BIT = 'FALSE';

BEGIN TRANSACTION;

	-- DELETE FROM Orders WHERE CustomerID = 8;
	DELETE FROM Addresses WHERE CustomerID = 8;
	DELETE FROM Customers WHERE CustomerID = 8;

	IF (@ERROR = 'TRUE')
		BEGIN
			COMMIT
	END
	ELSE
		BEGIN
			ROLLBACK
END;