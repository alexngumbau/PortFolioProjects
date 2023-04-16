SELECT

Source AS ReSeller,
SUM (SalesAmount) AS Sales,
SUM(SalesAmount)/(SELECT SUM(SalesAmount) FROM vwOrdersALL WHERE Country = N'United States' AND Source <>N'Web') AS PctOfTotal

FROM vwOrdersALL

WHERE Country = N'United States' AND Source <> N'Web'

GROUP BY Source

ORDER BY Sales DESC 