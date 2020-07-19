/*
*
Write an UPDATE statement that modifies the product you added in Exercise 7.4. This statement should change the DiscountPercent column from 0% to 35%.

Include an appropriate SELECT statement to verify the table has been modified correctly.
*
*
* 07/19/20
* BY Kevin Uriel Azuara Fonseca
*
*/

SELECT * FROM Products;

UPDATE Products SET DiscountPercent = 35 WHERE ProductID = 11;

SELECT * FROM Products;