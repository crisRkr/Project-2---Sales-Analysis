USE [AdventureWorks2017]
GO

/****** Object:  View [dbo].[v_ventas]    Script Date: 06/12/2023 06:20:19 p. m. ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

ALTER VIEW [dbo].[v_ventas] AS

SELECT
H.SalesOrderID, 
CAST(H.OrderDate as date) AS Fecha_pedido, 
CAST(H.ShipDate as date) AS Fecha_envio, 
H.TerritoryID, H.CustomerID ,D.ProductID, 
D.OrderQty AS Unidades, 
D.UnitPrice AS Precio_unitario,
D.OrderQty* D.UnitPrice as Subtotal

FROM
[Sales].[SalesOrderHeader] as H
LEFT JOIN [Sales].[SalesOrderDetail] AS D 
ON H.SalesOrderID = D.SalesOrderID

GO


