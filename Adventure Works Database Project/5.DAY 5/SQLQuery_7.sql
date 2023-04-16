SELECT

    EnglishProductName,
    EnglishDescription,
    Color,
    [Status],
    Class,
    SafetyStockLevel


FROM DimProduct

---USING BETWEEN TO REPLACE TWO NUMERIC or DATA RANGE CONDITIONS

    --WHERE (SafetyStockLevel BETWEEN 500 AND 1000) AND [Status] IS NOT NULL  --between is inclusive of both ends
    --WHERE  (SafetyStockLevel >= 500 and SafetyStockLevel <= 1000) AND [Status] IS NOT NULL

---USING IN TO REPLACE MULTIPLE OR STATEMENTS

WHERE Color IN (N'Black',N'Silver',N'Yellow')
    --WHERE Color = 'Black' OR Color = 'Silver' OR Color = 'Yellow'