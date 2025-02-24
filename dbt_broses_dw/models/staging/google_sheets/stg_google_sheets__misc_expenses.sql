SELECT
        CAST(date AS DATE) AS time_period_start_date
        , description
        , payment_source
        , category
        , expense_amt
FROM  {{ source('google_sheets', 'misc_expenses') }}