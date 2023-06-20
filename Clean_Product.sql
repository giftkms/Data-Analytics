SELECT 
	[ProductKey]
      ,[ProductAlternateKey] as Product_Item_code
      ,P.[ProductSubcategoryKey]
      --,[WeightUnitMeasureCode]
      --,[SizeUnitMeasureCode]
      ,[EnglishProductName] as Product_Name
	  ,cat.EnglishProductCategoryName as 'Product Category'
	  ,sub.EnglishProductSubcategoryName as Sub_cat
      --,[SpanishProductName]
      --,[FrenchProductName]
      --,[StandardCost]
      --,[FinishedGoodsFlag]
      ,[Color] as Product_color
      --,[SafetyStockLevel]
      --,[ReorderPoint]
      --,[ListPrice]
      ,[Size] as Product_size
      --,[SizeRange]
      --,[Weight]
      --,[DaysToManufacture]
      ,[ProductLine] as Product_Line
      --,[DealerPrice]
      --,[Class]
      --,[Style]
      ,[ModelName] as Product_Model
      --,[LargePhoto]
      ,[EnglishDescription] as 'Description'
      --,[FrenchDescription]
      --,[ChineseDescription]
      --,[ArabicDescription]
      --,[HebrewDescription]
      --,[ThaiDescription]
      --,[GermanDescription]
      --,[JapaneseDescription]
      --,[TurkishDescription]
      --,[StartDate]
      --,[EndDate]
      ,coalesce(P.Status,'OutDate') as status
FROM [AdventureWorksDW2019].[dbo].[DimProduct] as P
Left join [AdventureWorksDW2019].[dbo].[DimProductSubcategory] as sub on P.ProductSubcategoryKey = sub.ProductSubcategoryKey
Left join [AdventureWorksDW2019].[dbo].[DimProductCategory] as cat on sub.ProductCategoryKey = cat.ProductCategoryKey
order by ProductKey ASC
