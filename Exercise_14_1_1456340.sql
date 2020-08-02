/*
*
*
Write a script that declares a variable and sets it to the count of all products in the Products table. If the count is greater than or equal to 7,
the script should display a message that says The number of products is greater than or equal to 7. Otherwise, it should say The number of products is less than 7.
*
*
* BY Kevin Uriel Azuara Fonseca
* 08/02/20
*/
USE MyGuitarShop;

DECLARE @ProductCount int;
SET @ProductCount = (
	SELECT
		COUNT(ProductName)
	FROM
		Products);
IF
	@ProductCount > 0
PRINT
	'The number of products is greater than or equal to 7';
ELSE PRINT
	'The number of products is less than 7'