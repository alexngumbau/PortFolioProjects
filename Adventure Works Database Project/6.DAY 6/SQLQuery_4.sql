CREATE VIEW vwOrdersALL
AS

---Combined summary of sales and promo from both Internet Sales and Reseller Sales in 2012 and 2013.


SELECT

    --SALES AND PROMO SALARY FROM INTERNET SALES
    
    fs.SalesOrderNumber AS InvoiceNumber,
    fs.SalesOrderLineNumber AS InvoiceLineNumber,
    fs.OrderDate AS OrderDate,
    fs.SalesAmount AS SalesAmount,
    fs.TaxAmt AS TaxAmount,
    fs.OrderQuantity AS Quantity,

    dp.EnglishProductName AS ProductName,
    dp.Status AS [Status],

    dpsc.EnglishProductSubcategoryName AS ProductSubCategory,

    dpc.EnglishProductCategoryName AS ProductCategory,

    dst.SalesTerritoryCountry AS Country,
    dst.SalesTerritoryRegion AS Region,

    dpr.EnglishPromotionName AS PromotionName,
    dpr.EnglishPromotionType AS PromotioType,
    dpr.EnglishPromotionCategory AS PromotionCategory,

    dcy.CurrencyName AS Currency,

    'web' AS Source


FROM FactInternetSales AS fs 

    INNER JOIN DimProduct AS dp
    ON fs.ProductKey = dp.ProductKey

    INNER JOIN DimProductSubcategory AS dpsc 
    ON dp.ProductSubcategoryKey = dpsc.ProductSubcategoryKey

    INNER JOIN DimProductCategory AS dpc 
    ON dpsc.ProductCategoryKey = dpc.ProductCategoryKey

    INNER JOIN DimSalesTerritory AS dst 
    ON fs.SalesTerritoryKey = dst.SalesTerritoryKey

    INNER JOIN DimPromotion AS dpr 
    ON fs.PromotionKey = dpr.PromotionKey

    INNER JOIN DimCurrency AS dcy 
    ON fs.CurrencyKey = dcy.CurrencyKey

WHERE YEAR(OrderDate) IN(2012,2013)



UNION



SELECT

    --SALES AND PROMO SALARY FROM RESELLER SALES
    
    fs.SalesOrderNumber AS InvoiceNumber,
    fs.SalesOrderLineNumber AS InvoiceLineNumber,
    fs.OrderDate AS OrderDate,
    fs.SalesAmount AS SalesAmount,
    fs.TaxAmt AS TaxAmount,
    fs.OrderQuantity AS Quantity,

    dp.EnglishProductName AS ProductName,
    dp.Status AS [Status],

    dpsc.EnglishProductSubcategoryName AS ProductSubCategory,

    dpc.EnglishProductCategoryName AS ProductCategory,

    dst.SalesTerritoryCountry AS Country,
    dst.SalesTerritoryRegion AS Region,

    dpr.EnglishPromotionName AS PromotionName,
    dpr.EnglishPromotionType AS PromotioType,
    dpr.EnglishPromotionCategory AS PromotionCategory,

    dcy.CurrencyName AS Currency,

    dr.ResellerName AS Source


FROM FactResellerSales AS fs 

    INNER JOIN DimProduct AS dp
    ON fs.ProductKey = dp.ProductKey

    INNER JOIN DimProductSubcategory AS dpsc 
    ON dp.ProductSubcategoryKey = dpsc.ProductSubcategoryKey

    INNER JOIN DimProductCategory AS dpc 
    ON dpsc.ProductCategoryKey = dpc.ProductCategoryKey

    INNER JOIN DimSalesTerritory AS dst 
    ON fs.SalesTerritoryKey = dst.SalesTerritoryKey

    INNER JOIN DimPromotion AS dpr 
    ON fs.PromotionKey = dpr.PromotionKey

    INNER JOIN DimCurrency AS dcy 
    ON fs.CurrencyKey = dcy.CurrencyKey

    INNER JOIN DimReseller AS dr 
    ON fs.ResellerKey = dr.ResellerKey 

WHERE YEAR(OrderDate) IN(2012,2013)

GO



