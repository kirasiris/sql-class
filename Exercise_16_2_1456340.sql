/*
*
*
Write a script that creates a user-defined database role named OrderEntry in the MyGuitarShop database.
Give INSERT and UPDATE permission to the new role for the Orders and OrderItems table. Give SELECT permission for all user tables.
*
*
*
* By Kevin Uriel Azuara Fonseca
* 08/04/20
*/

USE MyGuitarShop;

CREATE ROLE
	OrderEntry;

GRANT INSERT ON
	Orders
TO
	OrderEntry;

GRANT INSERT ON
	OrderItems
TO
	OrderEntry;

GRANT UPDATE ON
	Orders
TO
	OrderEntry;

GRANT UPDATE ON
	OrderItems
TO
	OrderEntry;
	
GRANT SELECT ON
	Orders
TO
	PUBLIC;

GRANT SELECT ON
	OrderItems
TO
	PUBLIC;