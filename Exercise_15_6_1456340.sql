/*
*
Create a trigger named Products_UPDATE that checks the new value for the DiscountPercent column of the Products table. This trigger should raise an appropriate error if the discount percent is greater than 100 or less than 0.

If the new discount percent is between 0 and 1, this trigger should modify the new discount percent by multiplying it by 100. That way, a discount percent of .2 becomes 20.

Test this trigger with an appropriate UPDATE statement.
*
* By Kevin Uriel Azuara Fonseca
* 0/02/20
*
*/
USE MyGuitarShop;


CREATE TRIGGER products_before_update
  BEFORE UPDATE ON Products
  FOR EACH ROW
BEGIN

IF NEW.DiscountPercent > 100
	BEGIN
	RAISERROR(N'Discount percent can not be greater than 100.', 16, 1)
	RETURN
END


IF NEW.DiscountPercent < 0
	BEGIN
	RAISERROR(N'Discount percent can not be less than 0.', 16, 1)
	RETURN
END

IF NEW.DiscountPercent < 1
SET
	NEW.DiscountPercent = (NEW.DiscountPercent * 100);
END;

END