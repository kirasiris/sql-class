/*
*
Write a script that creates and calls a stored procedure named spInsertCategory. First, code a statement that creates a procedure that adds a new row to the Categories table. To do that, this procedure should have one parameter for the category name.

Code at least two EXEC statements that test this procedure. (Note that this table doesn't allow duplicate category names.)
*
* By Kevin Uriel Azuara Fonseca
* 0/02/20
*
*/

/*
USE MyGuitarShop;

IF EXISTS (SELECT DB_ID('spInsertCategory'))
  DROP PROC spInsertCategory;
GO
*/

CREATE PROC spInsertCategory
	@CategoryName varchar(225)
AS
INSERT INTO
	Categories (CategoryName)
VALUES(@CategoryName);
EXEC spInsertCategory 'First';
EXEC spInsertCategory 'Second';

-- SELECT * FROM Categories