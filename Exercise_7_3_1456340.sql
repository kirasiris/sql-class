/*
*
Write a DELETE statement that deletes the row you added to the Categories table in Exercise 7.1. This statement should use the CategoryID column to identify the row.

Include an appropriate SELECT statement to verify the table has been modified correctly.
*
*
* 07/19/20
* BY Kevin Uriel Azuara Fonseca
*
*/

SELECT * FROM Categories ORDER BY CategoryID;

DELETE Categories WHERE CategoryID = 5;

SELECT * FROM Categories ORDER BY CategoryID;