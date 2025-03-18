-- 01 ¿Cuál es la suma total de SubTotal para todos los registros?
SELECT SUM(SubTotal) FROM Purchasing.PurchaseOrderHeader;
-- 02 ¿Cuál es el valor promedio de TaxAmt en la tabla?
SELECT AVG(TaxAmt) FROM Purchasing.PurchaseOrderHeader;
-- 03 ¿Cuántos registros tienen un Status igual a 4?
SELECT COUNT(*) FROM Purchasing.PurchaseOrderHeader WHERE Status = 4;
-- 04 ¿Cuál es el TotalDue más alto en la tabla?
SELECT MAX(TotalDue) FROM Purchasing.PurchaseOrderHeader;
-- 05 ¿Cuál es el SubTotal más bajo en la tabla?
SELECT MIN(SubTotal) FROM Purchasing.PurchaseOrderHeader;
-- 06 ¿Cuál es la cantidad de órdenes por cada EmployeeID?
SELECT EmployeeID, COUNT(*) FROM Purchasing.PurchaseOrderHeader GROUP BY EmployeeID;
-- 07 ¿Qué ShipMethodID tiene el promedio más alto de Freight?
SELECT TOP 1 ShipMethodID, AVG(Freight) AS ShipAVG FROM Purchasing.PurchaseOrderHeader GROUP BY ShipMethodID ORDER BY ShipAVG DESC;
-- 08 ¿Cuántos registros hay en la tabla que tengan un VendorID mayor que 1600?
SELECT COUNT(*) FROM Purchasing.PurchaseOrderHeader WHERE VendorID > 1600;
-- 09 ¿Cuál es la suma de TotalDue para cada ShipMethodID?
SELECT ShipMethodID, SUM(TotalDue) FROM Purchasing.PurchaseOrderHeader GROUP BY ShipMethodID;
-- 10 ¿Cuál es el número total de órdenes realizadas en cada año (basándote en OrderDate)?
SELECT COUNT(PurchaseOrderID) FROM Purchasing.PurchaseOrderHeader GROUP BY YEAR(OrderDate)
-- 11 ¿Qué VendorID tiene la mayor cantidad de registros asociados?
SELECT TOP 1 VendorID, COUNT(*) AS Registros FROM Purchasing.PurchaseOrderHeader GROUP BY VendorID ORDER BY Registros DESC;
-- 12 ¿Cuál es la suma total de Freight por cada Status?
SELECT Status, SUM(Freight) FROM Purchasing.PurchaseOrderHeader GROUP BY Status;
-- 13 ¿Cuál es la cantidad de órdenes realizadas por cada ShipDate?
SELECT ShipDate, COUNT(*) FROM Purchasing.PurchaseOrderHeader GROUP BY ShipDate;
-- 14 ¿Qué EmployeeID generó el mayor TotalDue en suma?
SELECT TOP 1 EmployeeID, SUM(TotalDue) AS SumaDue FROM Purchasing.PurchaseOrderHeader GROUP BY EmployeeID ORDER BY SumaDue DESC;
-- 15 ¿Cuál es el valor promedio de SubTotal para las órdenes con un TaxAmt superior a 50?
SELECT AVG(SubTotal) FROM Purchasing.PurchaseOrderHeader WHERE TaxAmt > 50;
-- 16 ¿Cuál es el valor máximo de TaxAmt para cada ShipMethodID?
SELECT ShipMethodID, MAX(TaxAmt) FROM Purchasing.PurchaseOrderHeader GROUP BY ShipMethodID;
-- 17 ¿Cuántos registros hay por cada combinación de EmployeeID y ShipMethodID?
SELECT COUNT(*) FROM Purchasing.PurchaseOrderHeader GROUP BY EmployeeID, ShipMethodID;
-- 18 ¿Cuál es el valor mínimo de Freight para los registros con un SubTotal mayor a 20,000?
SELECT MIN(Freight) FROM Purchasing.PurchaseOrderHeader WHERE SubTotal > 20000;
-- 19 ¿Cuál es el promedio de TotalDue para cada año basado en OrderDate?
SELECT AVG(TotalDue) FROM Purchasing.PurchaseOrderHeader GROUP BY OrderDate;
-- 20 ¿Qué Purchasing.PurchaseOrderHeaderID tiene el mayor valor de Freight asociado?
SELECT TOP 1 PurchaseOrderID, MAX(Freight) as MaxFreight FROM Purchasing.PurchaseOrderHeader GROUP BY PurchaseOrderID ORDER BY MaxFreight DESC;
-- 21 ¿Cuál es la suma total de TaxAmt por cada combinación de Status y ShipMethodID?
SELECT SUM(TaxAmt) FROM Purchasing.PurchaseOrderHeader GROUP BY Status, ShipMethodID;
-- 22 ¿Cuántos registros tienen un OrderDate en cada mes del año 2011?
SELECT COUNT(*) FROM Purchasing.PurchaseOrderHeader WHERE YEAR(OrderDate) = '2011' GROUP BY MONTH(OrderDate);
-- 23 ¿Cuál es el valor promedio de Freight para los registros donde EmployeeID es mayor que 255?
SELECT AVG(Freight) FROM Purchasing.PurchaseOrderHeader WHERE EmployeeID > 255;
-- 24 ¿Cuál es el menor SubTotal registrado por cada ShipMethodID?
SELECT MIN(SubTotal) FROM Purchasing.PurchaseOrderHeader GROUP BY ShipMethodID;
-- 25 ¿Cuántos registros tienen un ShipDate anterior al ModifiedDate?
SELECT COUNT(*) FROM Purchasing.PurchaseOrderHeader WHERE ShipDate < ModifiedDate;