/*
*

Use the Management Studio (SSMS) to create a new database called MyWebDB using the default settings. (If the database already exists, use SSMS to delete it and then recreate it.
Use the Management Studio (SSMS) to create the following tables and relationships:
Define the UserID column in the Users table, the ProductsID column in the Products table, and the DownloadID column in the Downloads table as primary keys and identity columns.
In the Downloads table, set the UserID and ProductID column as the foreign keys.
Define the columns so none of them allow null values
Use the Management Studio (SSMS) to create indexes for the foreign keys in the Downloads table.
Use the Management Studio (SSMS) to create a unique index on the EmailAddress and ProductName columns and a regular index on the DownloadDate column.
Generate a script that creates the database you have defined in the previous 7 steps and save it to an SQL file. Submit the SQL file back to this assignment.

* BY Kevin Uriel Azuara Fonseca
* 07/26/20
*
*/

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

CREATE UNIQUE INDEX
	UIX_Users_EmailAddress
ON
	Users (EmailAddress);

CREATE UNIQUE INDEX
	UIX_Products_ProductName
ON
	Products (ProductName);