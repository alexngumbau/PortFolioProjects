SELECT TOP(100)

FROM FactInternetSales AS fs 
    INNER JOIN DimCustomer AS dc
    ON fs.CustomerKey = dc.CustomerKey