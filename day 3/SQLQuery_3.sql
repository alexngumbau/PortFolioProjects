SELECT

    EnglishProductName AS ProductName,
    EnglishDescription AS ProductDescription,
    CONCAT(EnglishProductName,'-',EnglishDescription) AS ProductNameDescription

FROM DimProduct

WHERE ProductKey = 555