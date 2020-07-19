/*
*
Write a SELECT statement that returns three columns:

EmailAddress
OrderID
the order total for each customer
To do this, you can group the result set by the EmailAddress and OrderID columns. In addition, you must calculate the order total from the columns in the OrderItems table.

Write a second SELECT statement that uses the first SELECT statement in its FROM clause. The main query should return two columns:

the customer's email address
the largest order for that customer.
To do this, you can group the result set by the EmailAddress column.

NOTE: Both SELECT statements will be in the same SQL file
*
*
* 07/19/20
* BY Kevin Uriel Azuara Fonseca
*
*/

SELECT c.EmailAddress,
       Max(OrderCost) AS LargestOrder
FROM   Customers c
       INNER JOIN Orders o
               ON c.CustomerID = o.CustomerID
       JOIN (SELECT Orders.OrderID,
                    ItemPrice * Quantity AS OrderCost
             FROM   Orders,
                    OrderItems
             WHERE  OrderItems.OrderID = Orders.OrderID)LargestOrder
         ON LargestOrder.OrderID = o.OrderID
GROUP  BY c.EmailAddress