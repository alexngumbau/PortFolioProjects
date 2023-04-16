SELECT 
    a.AccountDescription AS AccountDesription,
    SUM(ff.Amount) AS Amount,
    SUM(FF.Amount)/(SELECT
                    SUM(ff.Amount) AS Amount
                        
                    FROM FactFinance AS ff 

                        INNER JOIN DimScenario AS s 
                        ON ff.ScenarioKey = s.ScenarioKey

                        INNER JOIN DimAccount AS a 
                        ON ff.AccountKey = a.AccountKey

                        INNER JOIN DimOrganization AS o 
                        ON ff.OrganizationKey = o.OrganizationKey

                        INNER JOIN DimDate as d 
                        ON ff.DateKey = d.DateKey

                    WHERE s.ScenarioName = N'Actual' 
                        AND o.OrganizationName = N'Canadian Division'
                        AND d.CalendarYear = 2013
                        AND a.AccountType = N'Expenditures') AS PctOfTotal
    
FROM FactFinance AS ff 

    INNER JOIN DimScenario AS s 
    ON ff.ScenarioKey = s.ScenarioKey
    INNER JOIN DimAccount AS a 
    ON ff.AccountKey = a.AccountKey
    INNER JOIN DimOrganization AS o 
    ON ff.OrganizationKey = o.OrganizationKey
    INNER JOIN DimDate as d 
    ON ff.DateKey = d.DateKey

WHERE s.ScenarioName = N'Actual' 
    AND o.OrganizationName = N'Canadian Division'
    AND d.CalendarYear = 2013
    AND a.AccountType = N'Expenditures'

GROUP BY a.AccountDescription

ORDER BY Amount DESC 


