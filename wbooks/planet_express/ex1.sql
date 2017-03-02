/* Exercise - 1 : Who received a 1.5kg package? */

SELECT Client.Name
FROM Client JOIN Package ON Client.AccountNumber = Package.Recipient
WHERE Package.Weight = 1.5;
