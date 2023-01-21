SELECT *
FROM [Purchase].[PurchaseTrans]

 SELECT 
		 p.[TransID]
		,p.[OrderID]
		,p.[AccountNumber]
		,p.[Supplier]
		,p.[Address]
		,p.[City]
		,p.[PostalCode]
		,p.[StateProvince]
		,p.[Country]
		,p.[Employee]
		,p.[DueDate]
		,p.[ShipDate]
		,p.[OrderDate]
		,p.[CarrierTrackingNumber]
		,p.[ProductID]
		,pr.ProductName
		,c.CategoryName
		,pr.ProductNumber
		,p.[OrderQty]
		,p.[Class]
		,p.[Color]
		,p.[ListPrice]
		,p.[SpecialOfferID]
		,p.[UnitPrice]
		,p.[UnitPriceDiscount]

  FROM [Purchase].[PurchaseTrans] p
LEFT JOIN Purchase.Product pr ON pr.ProductID = p.ProductID
LEFT JOIN Purchase.ProductCategory pc ON pc.ProductCategoryID = p.ProductID
LEFT JOIN Purchase.Category c ON c.CategoryID = pc.CategoryID