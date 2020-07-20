/*
Write a SELECT statement that returns these columns from the Products table:

The DateAdded column
A column that uses the CAST function to return the DateAdded column with its date only (year, month, and day)
A column that uses the CAST function to return the DateAdded column with its full time only (hour, minutes, seconds, and milliseconds)
A column that uses the CAST function to return the DateAdded column with just the month and day
*
*
* BY Kevin Uriel Azuara Fonseca
* 07/19/20
*/

SELECT
	DateAdded,
	CAST(DateAdded AS date) AS RegularDate,
	CAST(DateAdded AS time) AS TimeOnly,
	CONCAT(MONTH(CAST(DateAdded AS date)) , '-' ,DAY(CAST(DateAdded AS date))) AS MonthDayOnly
FROM
	Products;