/*
*
Write an INSERT statement that adds this row to the Categories table:

CategoryName:	Brass


Code the INSERT statement so SQL Server automatically generates the value for the CategoryID column.

Include an appropriate SELECT statement to verify the table has been modified correctly.

*
*
* 07/19/20
* BY Kevin Uriel Azuara Fonseca
*
*/

INSERT INTO Categories (CategoryName) Values('Brass');

-- I would recommend to comment the code above in order to verify this select statement...in case this file runs twice.
SELECT * FROM Categories ORDER BY CategoryID;