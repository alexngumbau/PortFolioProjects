
/*
    SELECT

    SalesAmount,
    CAST(SalesAmount AS INT) AS SalesAmountCast,
    OrderDate,
    CAST(OrderDate AS DATE) AS OrderDateCast

    FROM FactInternetSales

*/

SELECT
EnglishProductName,
ReorderPoint,
SafetyStockLevel,

CAST(ReorderPoint AS DECIMAL(8,4)) / CAST(SafetyStockLevel AS DECIMAL(8,4)) AS PctOfTotalSafetyStock



FROM DimProduct
WHERE [Status] = 'Current'