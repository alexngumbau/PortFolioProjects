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