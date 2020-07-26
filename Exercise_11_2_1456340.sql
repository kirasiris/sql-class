/*
*
Write a script that implements the following design in a database named MyWebDB

....

In the Downloads table, the UserID and ProductID columns are the foreign keys.

Include a statement to drop the database if it already exists.

Include statements to create and select the database.

Create indexes for Users.UserID, Products.ProductID, Users.EmailAddresses, and Downloads.DownloadDate.
*
* BY KEVIN AZUARA FONSECA
* 07/26/20
*
*/



USE master

IF EXISTS
	(SELECT
		*
	FROM
		sys.databases
	WHERE
		name = 'MyWebDB')
DROP database MyWebDB;


CREATE database MyWebDB;


CREATE TABLE Users
(UserID			int		NOT NULL PRIMARY KEY,
EmailAddress	varchar(50)	NULL,
FirstName		varchar(50)	NULL,
LastName		varchar(50)	NULL);

CREATE TABLE Products
(ProductID		int			NOT NULL PRIMARY KEY,
ProductName		varchar(50)		NULL);

CREATE TABLE Downloads
(DownloadID		int				NOT NULL PRIMARY KEY,
UserID			int				NOT NULL REFERENCES Users (UserID),
DownloadDate	smalldatetime		NULL,
FileName		varchar(50)			NULL,
ProductID		int				NOT NULL REFERENCES Products (ProductID));

CREATE INDEX
	IX_Downloads_UserID
ON
	Downloads (UserID);
CREATE INDEX
	IX_Downloads_ProductID
ON
	Downloads (ProductID);