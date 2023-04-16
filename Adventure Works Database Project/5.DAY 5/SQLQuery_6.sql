SELECT
    dp.EnglishProductName AS ProductName,
    dp.Color AS ProductColor,
    dp.Size AS ProductSize,
    SUM(fs.SalesAmount) AS SalesAmount

FROM  FactInternetSales AS fs 
    INNER JOIN DimProduct as dp
    ON fs.ProductKey = dp.ProductKey

WHERE dp.Status = N'Current'

GROUP BY dp.EnglishProductName,dp.Color,dp.Size 

ORDER BY SalesAmount DESC


/*
SELECT  
    EnglishProductName

FROM DimProduct

WHERE [Status] = N'Current'
*/

SELECT
    dp.EnglishProductName AS ProductName,
    dp.Color AS ProductColor,
    ISNULL(dp.Size,'UKWN') AS ProductSize,
    ISNULL(SUM(fs.SalesAmount),'0') AS SalesAmount

FROM  FactInternetSales AS fs 
    RIGHT JOIN DimProduct as dp
    ON fs.ProductKey = dp.ProductKey

WHERE dp.Status = N'Current'

GROUP BY dp.EnglishProductName,dp.Color,dp.Size 

ORDER BY SalesAmount DESC