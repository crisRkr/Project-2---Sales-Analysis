USE [AdventureWorks2017]
GO

/****** Object:  View [dbo].[v_territorio]    Script Date: 06/12/2023 06:16:16 p. m. ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

ALTER VIEW [dbo].[v_territorio] AS  

SELECT a.TerritoryID,
CASE WHEN a.CountryRegionCode = 'US' THEN 'United Satets' ELSE a.Name END AS Pais, 
a.CountryRegionCode,  
a.[group] as grupo
FROM [AdventureWorks2017].[Sales].[SalesTerritory] AS a

GO


