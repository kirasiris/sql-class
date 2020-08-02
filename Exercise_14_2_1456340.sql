/*
*
*
Write a script that uses two variables to store:

the count of all the products in the Products table
the average list price for those products.
If the product count is greater than or equal to 7, the script should print a message that displays the values of both variables. Otherwise, the script should print a message that says The number of products is less than 7.
*
*
* BY Kevin Uriel Azuara Fonseca
* 08/02/20
*/
USE MyGuitarShop;

DECLARE @AllProducts INT;
DECLARE @Average MONEY;
SET @AllProducts = (
	SELECT
		COUNT(ProductID)
	FROM
		Products);
SET @Average = (
	SELECT
		AVG (ListPrice)
	FROM
		Products);
IF @AllProducts > 7
    BEGIN
        PRINT 'The number of products is greater than or equal to 7';
        PRINT 'The average list price for the products is $' + CONVERT (varchar,@Average,1);
    END;
ELSE 
    PRINT 'The number of products is less than 7';