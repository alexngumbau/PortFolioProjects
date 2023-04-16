SELECT

    CONCAT(FirstName,' ',LastName) AS CustomerName,
   
    CASE 
        WHEN NumberCarsOwned BETWEEN 2 AND 3 THEN '2-3'
        WHEN NumberCarsOwned >= 4 THEN '4+'
        ELSE 'UNKWN'
    END AS NumberOfCarsOwned,
    
     EmailAddress AS EmailAddress

FROM DimCustomer

WHERE HouseOwnerFlag = 1 AND NumberCarsOwned >1