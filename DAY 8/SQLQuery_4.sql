SELECT

    o.OrganizationName AS Organization,

    a.AccountType AS AccountType,
    a.AccountDescription AS Account,

    SUM(ff.Amount) AS Amt

FROM FactFinance AS ff 

    INNER JOIN DimScenario AS s 
    ON ff.ScenarioKey = s.ScenarioKey
    INNER JOIN DimDate AS d
    ON ff.DateKey = d.DateKey
    INNER JOIN DimOrganization AS o 
    ON ff.OrganizationKey = o.OrganizationKey
    INNER JOIN DimAccount AS a 
    ON ff.AccountKey = a.AccountKey

WHERE s.ScenarioName = N'Actual'
    AND d.CalendarYear = 2011
    AND d.EnglishMonthName = N'January'
    AND o.OrganizationName = N'Southwest Division' 
    AND a.AccountType = N'Expenditures'

GROUP BY o.OrganizationName, a.AccountType, a.AccountDescription

ORDER BY Amt DESC 