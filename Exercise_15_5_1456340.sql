/*
*
Write a script that creates and calls a stored procedure named spUpdateProductDiscount that updates the DiscountPercent column in the Products table. This procedure should have one parameter for the product ID and another for the discount percent.

If the value for the DiscountPercent column is a negative number, the stored procedure should raise an error that indicates that the value for this column must be a positive number.

Code at least two EXEC statements that test this procedure.
*
* By Kevin Uriel Azuara Fonseca
* 0/02/20
*
*/
CREATE PROCEDURE spUpdateProductDiscount(
  @ProductID         INT,
  @DiscountPercent   MONEY
  )
AS
IF @DiscountPercent < 0
  BEGIN
  RAISERROR(N'Discount percent must be positive.', 16, 1)
  RETURN

UPDATE Products
SET 
	DiscountPercent = @DiscountPercent
WHERE
	ProductID = @ProductID;

EXEC spUpdateProductDiscount(1, 30)