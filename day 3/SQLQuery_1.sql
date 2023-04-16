SELECT

    GETDATE() AS DateTimeStamp,
    DueDate,
    ShipDate,

    DATEDIFF(day, ShipDate, DueDate) AS DayBetweenShippedAndDueDate,
    DATEDIFF(HOUR, ShipDate, DueDate) AS HoursBetweenShippedAndDueDate,
    DATEADD(day,10,DueDate) AS DueDatePlusTenDays



FROM FactInternetSales




