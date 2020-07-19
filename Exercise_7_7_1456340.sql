/*
*
Write an INSERT statement that adds this row to the Customers table:

EmailAddress:	rick@raven.com
Password:	(empty string)
FirstName:	Rick
LastName:	Raven


Use a column list for this statement.

Include an appropriate SELECT statement to verify the table has been modified correctly.
*
*
* 07/19/20
* BY Kevin Uriel Azuara Fonseca
*
*/

SELECT * FROM Customers;

INSERT INTO Customers (EmailAddress, Password, FirstName, LastName) VALUES (
	'rick@raven.com',
	'',
	'Rick',
	'Raven'
);

SELECT * FROM Customers;