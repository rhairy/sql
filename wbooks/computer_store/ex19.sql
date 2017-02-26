/* Exercise - 19 :  Apply a 10% discount to all products. */
SELECT Name, Price - ROUND(Price * .10, 2) AS Discount
FROM Products;
