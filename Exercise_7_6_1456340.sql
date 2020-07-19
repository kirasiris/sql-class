/*
*
Write a DELETE statement that deletes the row in the Categories table that has an ID of 4. When you execute this statement, it will produce an error since the category has related rows in the Products table. To fix that, precede the DELETE statement with another DELETE statement that deletes all products in this category.

Include an appropriate SELECT statement to verify the table has been modified correctly.
*
*
* 07/19/20
* BY Kevin Uriel Azuara Fonseca
*
*/

DELETE Products WHERE CategoryID = 4;
DELETE Categories WHERE CategoryID = 4;