/* Exercise - 3 : Which pilots transported those packages? */

SELECT Employee.Name
FROM Employee JOIN Shipment ON Employee.EmployeeID = Shipment.Manager
WHERE Shipment.ShipmentID IN (
	SELECT Package.Shipment
	FROM Package JOIN Client ON Package.Sender = Client.AccountNumber
	WHERE Package.Sender = (
		SELECT Client.AccountNumber
		FROM Client JOIN Package ON Client.AccountNumber = Package.Recipient
		WHERE Package.Weight = 1.5
		))
GROUP BY Employee.Name;
