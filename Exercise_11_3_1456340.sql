/*
*
Write a script that adds rows to the database that you created in exercise 2.

Add two rows to the Users and Products tables (make up your own data).

Add three rows to the Downloads table:

one row for user 1 and product 2
one row for user 2 and product 1
one row for user 2 and product 2
Use the GETDATE() function to insert the current date and time into the DownloadDate column.

Write a SELECT statement that joins the three tables and retrieves the data from these tables like this:

.....

Sort the results by the email address in descending order and the product name in ascending order.
*
* BY KEVIN AZUARA FONSECA
* 07/26/20
*
*/

USE MyWebDB;
INSERT INTO
	Users
VALUES
	(1, 'bob@bob.com', 'Bob', 'McBobberson'),
	(2, 'billy@bob.com', 'Billy', 'McBobberson');
INSERT INTO
	Products
VALUES
	(1, 'ShamWow'),
	(2, 'NeverDull Ginsu Knife Set');
INSERT INTO
	Downloads
VALUES
	(1, 1, getdate(), 'file 1.txt', 2),
	(2, 2, getdate(), 'file 2.txt', 1),
	(3, 2, getdate(), 'file 3.txt', 2);


SELECT
	u.EmailAddress as email_address,
	u.FirstName as first_name,
	u.LastName as last_name,
	d.DownloadDate as download_date,
	d.FileName as filename,
	p.ProductName as product_name
FROM
	Downloads d
INNER JOIN
	Users u
ON
	u.UserID = d.UserID
INNER JOIN
	Products p
ON
	p.ProductID = d.UserID
ORDER BY EmailAddress DESC, ProductName ASC