/*
*
Write an UPDATE statement that modifies the row you just added to the Categories table. This statement should change the CategoryName column to Woodwinds, and it should use the CategoryID column to identify the row.

Include an appropriate SELECT statement to verify the table has been modified correctly.

*
*
* 07/19/20
* BY Kevin Uriel Azuara Fonseca
*
*/
SELECT * FROM Categories ORDER BY CategoryID;

UPDATE Categories SET CategoryName = 'Woodwinds' WHERE CategoryID = 5;

SELECT * FROM Categories ORDER BY CategoryID;