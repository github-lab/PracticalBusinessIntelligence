SELECT 
[FirstName]
,[MiddleName]
,[LastName]
,[EmailPromotion] as 'Email Promotion Count'
,sum([EmailPromotion]) OVER (order BY [LastName], [MiddleName], [FirstName] asc) as 'Running Sum'
FROM [AdventureWorks2014].[HumanResources].[vEmployee]
order by [LastName] asc