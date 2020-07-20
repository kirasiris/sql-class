/*
Write a SELECT statement that returns these columns from the Orders table:

The CardNumber column
The length of the CardNumber column
The last four digits of the CardNumber column
When you get that working right, add the column that follows to the result set. This is more difficult because the column requires the use of functions within functions:

A column that displays the last four digits of the CardNumber column in this format: XXXX-XXXX-XXXX-1234. In other words, use Xs for the first 12 digits of the card number and actual numbers for the last four digits of the number.
*
*
* BY Kevin Uriel Azuara Fonseca
* 07/19/20
*/

SELECT
	CardNumber,
	LEN(CardNumber) AS CardNumberLength,
	RIGHT(CardNumber, 4) AS LastFourthDigits,
	CONCAT('XXXX-XXXX-XXXX-', RIGHT(CardNumber, 4)) AS HashedCardNumbers
FROM
	Orders;