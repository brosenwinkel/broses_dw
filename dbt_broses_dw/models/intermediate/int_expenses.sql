SELECT
  time_period_start_date
  , description
  , SUM(debit_amt) AS expense_amt
FROM {{ ref('stg_google_sheets__bluevine_transactions') }}
WHERE LOWER(description) NOT LIKE '%transfer%'
GROUP BY 1,2

UNION ALL

SELECT
  time_period_start_date
  , description
  , SUM(expense_amt) AS expense_amt
FROM {{ ref('stg_google_sheets__misc_expenses') }}
GROUP BY 1,2