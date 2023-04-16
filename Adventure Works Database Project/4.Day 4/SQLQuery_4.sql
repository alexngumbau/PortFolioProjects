SELECT

    SalesOrderNumber AS InvoiceNumber,
    SalesOrderLineNumber AS InvoiceLineNumber,
    SalesAmount AS SalesAmount,
    TaxAmt AS TaxAmount

FROM FactInternetSales

WHERE SalesTerritoryKey = 1 AND DATENAME(month, OrderDate) = N'December'