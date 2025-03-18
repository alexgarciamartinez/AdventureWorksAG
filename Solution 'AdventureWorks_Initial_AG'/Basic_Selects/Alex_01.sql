SELECT TOP (1000) [PurchaseOrderID]
      ,[RevisionNumber]
      ,[Status]
      ,[EmployeeID]
      ,[VendorID]
      ,[ShipMethodID]
      ,[OrderDate]
      ,[ShipDate]
      ,[SubTotal]
      ,[TaxAmt]
      ,[Freight]
      ,[TotalDue]
      ,[ModifiedDate]
  FROM [AdventureWorks2022].[Purchasing].[PurchaseOrderHeader]

SELECT 
    COUNT(EmployeeID) as empleados, 
    ShipMethodID as tipoenvio, 
	ModifiedDate as fecha,
	GROUPING(ModifiedDate) as fechaModificada,
	GROUPING(ShipMethodID) as tipoDeEnvio
FROM [AdventureWorks2022].[Purchasing].[PurchaseOrderHeader]
GROUP BY ROLLUP(ModifiedDate, ShipMethodID);


-- Saber cuantos empleados han usado cada tipo de envío por cada fecha de pedido
SELECT 
	COUNT(EmployeeID) as nroEmpleados,
	ShipMethodID as tipoDeEnvio,
	OrderDate as fecha,
	GROUPING(ShipMethodID) as tipoDeEnvioAgrupado,
	GROUPING(OrderDate) as fechaPedidoAgrupada
FROM [AdventureWorks2022].[Purchasing].[PurchaseOrderHeader]
GROUP BY ROLLUP(ShipMethodID, OrderDate)
ORDER BY OrderDate DESC