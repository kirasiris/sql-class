/*
*
Write an UPDATE statement that modifies the Customers table. Change the password column to "secret" for the customer with an email address of rick@raven.com

Include an appropriate SELECT statement to verify the table has been modified correctly.
*
*
* 07/19/20
* BY Kevin Uriel Azuara Fonseca
*
*/

SELECT * FROM Customers;

UPDATE Customers SET Password = 'secret' WHERE EmailAddress = 'rick@raven.com';

SELECT * FROM Customers;