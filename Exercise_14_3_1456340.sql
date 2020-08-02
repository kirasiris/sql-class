/*
*
*
Write a script that calculates the common factors between 10 and 20. To find a common factor, you can use the modulus operator (%) to check whether a number can be evenly divided into both numbers.
Then, this script should print lines that display the common factors like this:

Common factors of 10 and 20
1
2
5
*
*
* BY Kevin Uriel Azuara Fonseca
* 08/02/20
*/
CREATE PROCEDURE findCommonFactors AS
BEGIN 
    DECLARE @counter INT
    DECLARE @fact10 INT
    DECLARE @fact20 INT
    DECLARE @factors varchar (100)

    SET @fact10 = 10;
    SET @fact20 = 20;
    SET @counter = 1;
    SET @factors = 'Factors of 10 and 20: ' + char(13);

    WHILE (@counter <= 10)
       BEGIN
          IF ( @fact10 %  @counter = 0 AND @fact20 % @counter = 0)
            SET @factors = CONCAT (@factors, @counter, ' ', char(13));
       SET @counter = @counter + 1;
       END
       SELECT @factors
END;