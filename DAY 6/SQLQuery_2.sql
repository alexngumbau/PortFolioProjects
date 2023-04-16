SELECT

    Region,
    ProductCategory,
    SUM(SalesAmount) AS TotalSales

FROM vwOrdersALL

WHERE YEAR(OrderDate) = 2013
AND Currency = N'US Dollar'

GROUP BY Region, ProductCategory