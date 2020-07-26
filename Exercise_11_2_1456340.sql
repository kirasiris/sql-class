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



use master

IF EXISTS
	(SELECT
		*
	FROM
		sys.databases
	WHERE
		name = 'MyWebDB')
DROP database MyWebDB;
go

CREATE database MyWebDB;
go

create table Users
(UserID			int			not null primary key,
EmailAddress		varchar(50)		null,
FirstName		varchar(50)		null,
LastName		varchar(50)		null);

create table Products
(ProductID		int			not null primary key,
ProductName		varchar(50)		null);

create table Downloads
(DownloadID		int			not null primary key,
UserID			int			not null references Users (UserID),
DownloadDate		smalldatetime		null,
FileName		varchar(50)		null,
ProductID		int			not null references Products (ProductID));

create index IX_Downloads_UserID
on Downloads (UserID);
create index IX_Downloads_ProductID
on Downloads (ProductID);