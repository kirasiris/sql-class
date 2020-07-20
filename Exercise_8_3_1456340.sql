/*
Write a SELECT statement that returns these columns from the Orders table:

A column that uses the CONVERT function to return the OrderDate column in this format: MM/DD/YYYY. In other words, use 2-digit months and days and a 4-digit year, and separate each date component with slashes.
A column that uses the CONVERT function to return the OrderDate column with the date, and the hours and minutes on a 12-hour clock with an am/pm indicator.
A column that uses the CONVERT function to return the OrderDate column with 2-digit hours, minutes, and seconds on a 24-hour clock. Use leading zeros for all date/time components.
*
*
* BY Kevin Uriel Azuara Fonseca
* 07/19/20
*/

SELECT
	CONVERT(varchar, OrderDate, 1) AS 'MM/DD/YYYY',
	CONVERT(varchar, OrderDate, 100) AS 'Date',
	CONVERT(varchar, OrderDate, 8) AS 'HH:MM:SS'
FROM
	Orders;