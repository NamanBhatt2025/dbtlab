{{ config(materialized='table') }}

WITH Product_Sales AS (
    SELECT CITY, STATE, SUM(NA_SALES), SUM(GLOBAL_SALES)
    FROM PROD.product
    GROUP BY CITY, STATE
)
SELECT *
FROM Product_Sales