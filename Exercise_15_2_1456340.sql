/*
*
Write a script that creates and calls a function named fnDiscountPrice that calculates the discount price of an item in the OrderItems table( discount amount subtracted from item price).
To do that, this function should accept one parameter for the item ID, and it should return the value of the discount price for that item.
*
* By Kevin Uriel Azuara Fonseca
* 0/02/20
*
*/
CREATE FUNCTION fnDiscountPrice
	(@newItem INT)
RETURNS
	INT

BEGIN

RETURN (
	SELECT ( ItemPrice - DiscountAmount )
AS
	DiscountPrice
FROM
	OrderItems
WHERE ItemID = @newItem);

END