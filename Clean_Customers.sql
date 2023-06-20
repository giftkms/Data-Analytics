--Cleansed DIM_Customers Table
SELECT [CustomerKey]
      --,[GeographyKey]
      --,[CustomerAlternateKey]
      --,[Title]
      ,[FirstName] As firstname
      --,[MiddleName]
      ,[LastName] As lastname
	  ,firstname + ' ' + lastname AS 'Full name'
      --,[NameStyle]
      --,[BirthDate]
      --,[MaritalStatus]
      --,[Suffix]
      ,CASE 
	   WHEN [Gender] ='M' THEN 'Male'
	   WHEN [Gender]= 'F' THEN 'Female'
	   end AS Gender
      --,[EmailAddress]
      --,[YearlyIncome]
      --,[TotalChildren]
      --,[NumberChildrenAtHome]
      --,[EnglishEducation]
      --,[SpanishEducation]
      --,[FrenchEducation]
      --,[EnglishOccupation]
      --,[SpanishOccupation]
      --,[FrenchOccupation]
      --,[HouseOwnerFlag]
      --,[NumberCarsOwned]
      --,[AddressLine1]
      --,[AddressLine2]
      --,[Phone]
      ,[DateFirstPurchase] as date_first_purchase
      ,[CommuteDistance]
	 ,g.[City] as 'Customer City'
FROM	[DimCustomer] AS a
inner join DimGeography as g on g.GeographyKey = a.GeographyKey
order by CustomerKey ASC

