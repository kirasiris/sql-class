/*
*
*
Write a script that attempts to insert a new category named Guitars into the Categories table. If the insert is successful, the script should display this message:

SUCCESS: Record was inserted.

If the update is unsuccessful, the script should display a message something like this:

FAILURE: Record was not inserted.

Error 2627: Violation of UNIQUE KEY constraint 'UQ_Categori__8517B2E0A87CE853'. Cannot insert duplicate key in object 'dbo.Categories'. The duplicate key value is (Guitars).

Note: Make sure you are displaying the generated error, not the exact text as shown above in "Error 2627: Violation ... "
*
*
* BY Kevin Uriel Azuara Fonseca
* 08/02/20
*/
USE MyGuitarShop;

BEGIN TRY
    -- Insert the data
    INSERT INTO Categories (CategoryName)
    VALUES ('Guitars')
    PRINT 'SUCCESS: Record was inserted.'
END TRY
BEGIN CATCH
    PRINT 'FAILURE: Record was not inserted.';
END CATCH