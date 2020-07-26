/*
*
Write an ALTER TABLE statement that modifies the Users table created in exercise 2 so the FirstName column cannot store null values and can store a maximum of 20 characters.

Code an UPDATE statement that attempts to insert a null value into this column. It should fail due to the not null constraint.

Code another UPDATE statement that attempts to insert a first name that's longer than 20 characters. It should fail due to the length of the column.
*
* BY KEVIN AZUARA FONSECA
* 07/26/20
*
*/

USE MyWebDB;
ALTER TABLE
	Users
ALTER COLUMN
	FirstName varchar(20) NOT NULL;


USE MyWebDB;

UPDATE
	Users
SET
	FirstName = NULL
WHERE
	UserID = 1;

USE MyWebDB;
UPDATE
	Users
SET
	FirstName = '123456789012345678901'
WHERE
	UserID = 1;