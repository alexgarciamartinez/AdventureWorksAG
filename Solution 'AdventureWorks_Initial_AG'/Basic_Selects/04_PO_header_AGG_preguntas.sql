-- 01 �Cu�l es la suma total de SubTotal para todos los registros?
SELECT SUM(SubTotal) FROM Purchasing.PurchaseOrderHeader;
-- 02 �Cu�l es el valor promedio de TaxAmt en la tabla?
SELECT AVG(TaxAmt) FROM Purchasing.PurchaseOrderHeader;
-- 03 �Cu�ntos registros tienen un Status igual a 4?
SELECT COUNT(*) FROM Purchasing.PurchaseOrderHeader WHERE Status = 4;
-- 04 �Cu�l es el TotalDue m�s alto en la tabla?
SELECT MAX(TotalDue) FROM Purchasing.PurchaseOrderHeader;
-- 05 �Cu�l es el SubTotal m�s bajo en la tabla?
SELECT MIN(SubTotal) FROM Purchasing.PurchaseOrderHeader;
-- 06 �Cu�l es la cantidad de �rdenes por cada EmployeeID?
SELECT EmployeeID, COUNT(*) FROM Purchasing.PurchaseOrderHeader GROUP BY EmployeeID;
-- 07 �Qu� ShipMethodID tiene el promedio m�s alto de Freight?
SELECT TOP 1 ShipMethodID, AVG(Freight) AS ShipAVG FROM Purchasing.PurchaseOrderHeader GROUP BY ShipMethodID ORDER BY ShipAVG DESC;
-- 08 �Cu�ntos registros hay en la tabla que tengan un VendorID mayor que 1600?
SELECT COUNT(*) FROM Purchasing.PurchaseOrderHeader WHERE VendorID > 1600;
-- 09 �Cu�l es la suma de TotalDue para cada ShipMethodID?
SELECT ShipMethodID, SUM(TotalDue) FROM Purchasing.PurchaseOrderHeader GROUP BY ShipMethodID;
-- 10 �Cu�l es el n�mero total de �rdenes realizadas en cada a�o (bas�ndote en OrderDate)?
SELECT COUNT(PurchaseOrderID) FROM Purchasing.PurchaseOrderHeader GROUP BY YEAR(OrderDate)
-- 11 �Qu� VendorID tiene la mayor cantidad de registros asociados?
SELECT TOP 1 VendorID, COUNT(*) AS Registros FROM Purchasing.PurchaseOrderHeader GROUP BY VendorID ORDER BY Registros DESC;
-- 12 �Cu�l es la suma total de Freight por cada Status?
SELECT Status, SUM(Freight) FROM Purchasing.PurchaseOrderHeader GROUP BY Status;
-- 13 �Cu�l es la cantidad de �rdenes realizadas por cada ShipDate?
SELECT ShipDate, COUNT(*) FROM Purchasing.PurchaseOrderHeader GROUP BY ShipDate;
-- 14 �Qu� EmployeeID gener� el mayor TotalDue en suma?
SELECT TOP 1 EmployeeID, SUM(TotalDue) AS SumaDue FROM Purchasing.PurchaseOrderHeader GROUP BY EmployeeID ORDER BY SumaDue DESC;
-- 15 �Cu�l es el valor promedio de SubTotal para las �rdenes con un TaxAmt superior a 50?
SELECT AVG(SubTotal) FROM Purchasing.PurchaseOrderHeader WHERE TaxAmt > 50;
-- 16 �Cu�l es el valor m�ximo de TaxAmt para cada ShipMethodID?
SELECT ShipMethodID, MAX(TaxAmt) FROM Purchasing.PurchaseOrderHeader GROUP BY ShipMethodID;
-- 17 �Cu�ntos registros hay por cada combinaci�n de EmployeeID y ShipMethodID?
SELECT COUNT(*) FROM Purchasing.PurchaseOrderHeader GROUP BY EmployeeID, ShipMethodID;
-- 18 �Cu�l es el valor m�nimo de Freight para los registros con un SubTotal mayor a 20,000?
SELECT MIN(Freight) FROM Purchasing.PurchaseOrderHeader WHERE SubTotal > 20000;
-- 19 �Cu�l es el promedio de TotalDue para cada a�o basado en OrderDate?
SELECT AVG(TotalDue) FROM Purchasing.PurchaseOrderHeader GROUP BY OrderDate;
-- 20 �Qu� Purchasing.PurchaseOrderHeaderID tiene el mayor valor de Freight asociado?
SELECT TOP 1 PurchaseOrderID, MAX(Freight) as MaxFreight FROM Purchasing.PurchaseOrderHeader GROUP BY PurchaseOrderID ORDER BY MaxFreight DESC;
-- 21 �Cu�l es la suma total de TaxAmt por cada combinaci�n de Status y ShipMethodID?
SELECT SUM(TaxAmt) FROM Purchasing.PurchaseOrderHeader GROUP BY Status, ShipMethodID;
-- 22 �Cu�ntos registros tienen un OrderDate en cada mes del a�o 2011?
SELECT COUNT(*) FROM Purchasing.PurchaseOrderHeader WHERE YEAR(OrderDate) = '2011' GROUP BY MONTH(OrderDate);
-- 23 �Cu�l es el valor promedio de Freight para los registros donde EmployeeID es mayor que 255?
SELECT AVG(Freight) FROM Purchasing.PurchaseOrderHeader WHERE EmployeeID > 255;
-- 24 �Cu�l es el menor SubTotal registrado por cada ShipMethodID?
SELECT MIN(SubTotal) FROM Purchasing.PurchaseOrderHeader GROUP BY ShipMethodID;
-- 25 �Cu�ntos registros tienen un ShipDate anterior al ModifiedDate?
SELECT COUNT(*) FROM Purchasing.PurchaseOrderHeader WHERE ShipDate < ModifiedDate;