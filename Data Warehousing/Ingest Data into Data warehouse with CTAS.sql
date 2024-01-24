DROP TABLE [WH].[dbo].[Customers];
CREATE TABLE [WH].[dbo].[Customers] AS
SELECT * FROM [Sales].[dbo].[dimcustomer_gold];