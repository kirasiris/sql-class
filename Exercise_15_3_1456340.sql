/*
*
Write a script that creates and calls a function named fnItemTotal that calculates the total amount of an item in the OrderItems table (discount price multiplied by quantity).
To do that, this function should accept one parameter for the item ID, it should use the DiscountPrice function that you created in exercise 2, and it should return the value of the total for that item
*
* By Kevin Uriel Azuara Fonseca
* 0/02/20
*
*/
CREATE FUNCTION fnItemTotal
 (@item_id INT)
RETURNS
	INT

BEGIN

RETURN (SELECT dbo.fnDiscountPrice(@item_id) * (
	SELECT
		quantity
	FROM
		OrderItems
	WHERE
		ItemID = @item_id
));

END