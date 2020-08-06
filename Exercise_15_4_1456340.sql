/*
*
Write a script that creates and calls a stored procedure named spInsertProduct that inserts a row into the Products table.
This stored procedure should accept five parameters. One parameter for each of these columns: CategoryID, ProductCode, ProductName, ListPrice, and DiscountPercent.

This stored procedure should set the Description column to an empty string, and it should set the DateAdded column to the current date (use GETDATE() ).

If the value for the ListPrice column is a negative number, the stored procedure should raise an error that indicates that this column doesn't accept negative numbers.
Similarly, the procedure should raise an error if the value for the DiscountPercent column is a negative number.

Code at least two EXEC statements that test this procedure.
*
* By Kevin Uriel Azuara Fonseca
* 0/02/20
*
*/

CREATE PROCEDURE spInsertProduct (
  @CategoryID INT, 
  @ProductCode VARCHAR,
  @ProductName VARCHAR, 
  @ListPrice MONEY, 
  @DiscountPercent MONEY)
AS
BEGIN

IF @ListPrice < 0
	BEGIN
	RAISERROR(N'No negative numbers List Price.', 16, 1)
	RETURN
END

IF @DiscountPercent < 0
	BEGIN
	RAISERROR(N'We do not accept negative Discount Percent.', 16, 1)
	RETURN
END

INSERT INTO
	Products (
		CategoryID,
		ProductCode,
		ProductName,
		ListPrice,
		DiscountPercent
	)
VALUES (
	@CategoryID,
	@ProductCode,
	@ProductName,
	@ListPrice,
	@DiscountPercent
);
END;

EXEC spInsertProduct(10, 'A', 'Nikes', 50, .10)