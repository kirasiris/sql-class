/*
*
Write a script that adds an index to the MyGuitarShop database for the zip code field in the Addresses table.
*
* BY KEVIN AZUARA FONSECA
* 07/26/20
*
*/

USE MyGuitarShop;

CREATE INDEX
	zipCodeAddressIndex
ON
	Addresses (ZipCode);