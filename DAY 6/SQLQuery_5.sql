----SUBQUERY WITHIN A QUERY

SELECT
    InvoiceNumber,
    InvoiceLineNumber,
    OrderDate,
    SalesAmount,
    ProductName,
    ProductSubCategory

FROM vwOrdersALL

WHERE OrderDate = (SELECT MAX(OrderDate) FROM vwOrdersALL)