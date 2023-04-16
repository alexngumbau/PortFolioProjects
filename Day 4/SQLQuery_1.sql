SELECT

    EnglishProductName,
    EnglishDescription,
    Color,
    [Status],
    Class,
    SafetyStockLevel

FROM DimProduct


WHERE (SafetyStockLevel BETWEEN 500 AND 1000) AND [Status] IS NOT NULL --BETWEEN IS INCLUSIVE OF BOTH ENDS
--WHERE (SafetyStockLevel >= 500 AND SafetyStockLevel >= 1000) AND [Status] IS NOT NULL
--WHERE Color IN ('Black','Silver','White','Yellow')