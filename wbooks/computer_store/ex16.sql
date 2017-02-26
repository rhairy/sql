/* Exercise - 16 : Select the name of each manufacturer along with the name and price
 * of its most most expensive product. */

SELECT Manufacturers.Name, Products.Name, MAX(Products.Price)
FROM Manufacturers JOIN Products ON Manufacturers.Code = Products.Manufacturer
GROUP BY 1;
