SELECT

    FirstName,
    LastName,
    YearlyIncome,
    EmailAddress,
    IIF(YearlyIncome > 50000, 'Above Average', 'Below Average') AS IncomeCategory

FROM DimCustomer