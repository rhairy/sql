/* Exercise - 19 :  Apply a 10% discount to all products with a price larger than or equal to $120. */
SELECT Name, Price - ROUND(Price * .10, 2) AS Discount
FROM Products
WHERE Price >= 120;
