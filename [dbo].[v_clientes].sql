USE [AdventureWorks2017]
GO

/****** Object:  View [dbo].[v_clientes]    Script Date: 06/12/2023 06:13:17 p. m. ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

ALTER VIEW [dbo].[v_clientes] AS  

SELECT C.CustomerID, CONCAT_WS(' ', P.FirstName, P.LastName) as Nombres, C.StoreID, C.TerritoryID
FROM [AdventureWorks2017].[Sales].[Customer] AS C
LEFT JOIN [AdventureWorks2017].[Person].[Person] AS P
ON C.PersonID = P.BusinessEntityID
WHERE C.PersonID IS NOT NULL;


GO


