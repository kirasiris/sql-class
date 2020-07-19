/*
*
Write an UPDATE statement that modifies the Customers table. Change the password column to reset for every customer in the table.

Include an appropriate SELECT statement to verify the table has been modified correctly.
*
*
* 07/19/20
* BY Kevin Uriel Azuara Fonseca
*
*/

SELECT * FROM Customers;

UPDATE Customers SET Password = 'reset';

SELECT * FROM Customers;