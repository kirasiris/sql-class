/*
*
Write an ALTER TABLE statement that adds two new columns to the Products table created in exercise 2:

Column for product price that provides for three digits to the left of the decimal point and two to the right. This column should have a default value of 9.99.
Column for the date and time that the product was added to the database.
*
* BY KEVIN AZUARA FONSECA
* 07/26/20
*
*/

USE MyWebDB;

ALTER TABLE
	Products
ADD
	ProductPrice NUMERIC(5,2) DEFAULT 9.99;

ALTER TABLE
	Products
ADD
	DateProductAdded SMALLDATETIME DEFAULT GETDATE();