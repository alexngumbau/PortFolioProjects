SELECT

ProductCategory,
ProductSubCategory,
SUM(SalesAmount) AS SalesAmount

FROM vwOrdersALL

WHERE YEAR(OrderDate) = 2013
AND Currency = N'US Dollar'

GROUP BY ROLLUP(ProductCategory, ProductSubCategory)