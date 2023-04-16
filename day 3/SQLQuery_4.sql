SELECT

    EnglishProductName AS ProductName,
    EnglishDescription AS ProductDescription,
    CONCAT(EnglishProductName,'-',EnglishDescription) AS ProductNameDescription,
    LEN(EnglishProductName) AS DescriptionLength,
    UPPER(EnglishProductName) AS UpperProductName,
    LOWER(EnglishProductName) AS LowerProductName,
    REPLACE(EnglishProductName, 'Front','Ultra Durable Front') AS EnglishProductNameReplaced

FROM DimProduct

WHERE ProductKey = 555