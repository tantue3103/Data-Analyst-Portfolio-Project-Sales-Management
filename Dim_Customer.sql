SELECT 
c.[CustomerKey] AS CustomerKey,
      --,[GeographyKey]
      --,[CustomerAlternateKey]
      --,[Title]
c.[FirstName] AS FirstName,
      --,[MiddleName]
c.[LastName] AS LastName,
c.FirstName +' '+ c.[LastName] AS FullName, 
      --,[NameStyle]
      --,[BirthDate]
      --,[MaritalStatus]
      --,[Suffix]
CASE c.[Gender] WHEN 'M' THEN 'Male'
                WHEN 'F' THEN 'Female'
                END AS Gender,
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
c.[DateFirstPurchase] AS DateFirstPurchase,
      --,[CommuteDistance]
g.City AS CustomerCity -- Joined in Customer City from Geography Table
  FROM [AdventureWorksDW2019].[dbo].[DimCustomer] AS c
  LEFT JOIN dbo.DimGeography AS g
  ON g.GeographyKey = c.GeographyKey
  ORDER BY CustomerKey ASC -- Order List by CustomerKey