USE [AdventureWorks2017]
GO

/****** Object:  View [dbo].[v_productos]    Script Date: 06/12/2023 06:15:50 p. m. ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

ALTER VIEW [dbo].[v_productos] AS  

SELECT P.ProductID, 
P.Name as 'Producto', 
C.name as 'Categoria', 
S.Name as 'Subcategoria'

FROM [AdventureWorks2017].[Production].[Product] AS P
LEFT JOIN [AdventureWorks2017].[Production].[ProductCategory] AS S
	ON P.ProductSubcategoryID = S. ProductCategoryID
LEFT JOIN [AdventureWorks2017].[Production].[ProductCategory] AS C
	ON S.ProductCategoryID = C. ProductCategoryID

GO


