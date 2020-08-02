/*
*
*
Write an UPDATE statement that updates the CustomerAddresses view you created in exercise 1 so it sets the first line of the shipping address to 1990 Westwood Blvd. for the customer with an ID of 8.
*
*
* BY Kevin Uriel Azuara Fonseca
* 08/02/20
*
*/
UPDATE
	CustomerAddresses
SET
	BillLine1 = '1990 Westwood Blvd.'
WHERE
	CustomerID = 8