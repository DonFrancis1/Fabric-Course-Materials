--Create table
CREATE TABLE [dbo].[bing_covid-19_data]
(
    [id] [int] NULL,
    [updated] [date] NULL,
    [confirmed] [int] NULL,
    [confirmed_change] [int] NULL,
    [deaths] [int] NULL,
    [deaths_change] [int] NULL,
    [recovered] [int] NULL,
    [recovered_change] [int] NULL,
    [latitude] [float] NULL,
    [longitude] [float] NULL,
    [iso2] [varchar](8000) NULL,
    [iso3] [varchar](8000) NULL,
    [country_region] [varchar](8000) NULL,
    [admin_region_1] [varchar](8000) NULL,
    [iso_subdivision] [varchar](8000) NULL,
    [admin_region_2] [varchar](8000) NULL,
    [load_time] [datetime2](6) NULL
);

--Ingest data into the table using COPY INTO statement
COPY INTO [dbo].[bing_covid-19_data]
FROM 'https://pandemicdatalake.blob.core.windows.net/public/curated/covid-19/bing_covid-19_data/latest/bing_covid-19_data.parquet'
WITH (
    FILE_TYPE = 'PARQUET'
);

SELECT COUNT(*) FROM [dbo].[bing_covid-19_data];

SELECT TOP 100 * FROM [dbo].[bing_covid-19_data];
