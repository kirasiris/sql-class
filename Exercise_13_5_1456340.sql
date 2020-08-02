/*
*
*
Create a view named ProductSummary that uses the view you created in exercise 4. This view should return some summary information about each product.

Each row should include these columns: ProductName, OrderCount (the number of times the product has been ordered), and OrderTotal (the total sales for the product).
*
*
* BY Kevin Uriel Azuara Fonseca
* 08/02/20
*
*/
CREATE VIEW
	ProductSummary
AS
SELECT
	ProductName,
	COUNT(ProductName) AS OrderCount,
	SUM(ItemTotal) AS OrderTotal
FROM
	OrderItemProducts
GROUP BY
	ProductName