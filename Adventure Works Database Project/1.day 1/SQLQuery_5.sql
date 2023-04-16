SELECT

SalesOrderNumber AS InvoiceNumber,
SalesOrderLineNumber AS InvoiceLineNumber,
SalesAmount AS SalesAmount


FROM FactInternetSales

WHERE CurrencyKey = 100