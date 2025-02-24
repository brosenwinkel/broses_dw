SELECT
        CAST(date AS DATE) AS time_period_start_date
        , description
        , revenue_amt
FROM  {{ source('google_sheets', 'misc_revenue') }}