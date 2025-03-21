WITH expenses AS (
  
SELECT
  date_trunc(time_period_start_date,month) AS time_period_start_date
  , SUM(expense_amt) AS expense_amt
FROM {{ ref('int_expenses') }}
GROUP BY 1

), revenue_pre AS (

SELECT
  time_period_start_date
  , SUM(total_earned_amt) AS total_earned_amt
FROM {{ ref('stg_tunecore__tunecore_rev') }}
GROUP BY 1

UNION ALL

SELECT
  time_period_start_date
  , SUM(total_earned_amt) AS total_earned_amt
FROM {{ ref('stg_google_sheets__distrokid_rev') }}
GROUP BY 1

UNION ALL 

SELECT
  date_trunc(time_period_start_date, MONTH) AS time_period_start_date
  , SUM(total_earned_amt) AS total_earned_amt

FROM {{ ref('stg_shopify__order') }}
GROUP BY 1

UNION ALL 

SELECT
  date_trunc(time_period_start_date, MONTH) AS time_period_start_date
  , SUM(revenue_amt) AS total_earned_amt
FROM {{ ref('stg_google_sheets__misc_revenue') }}
GROUP BY 1

), revenue AS (

  SELECT
    time_period_start_date
    , SUM(total_earned_amt) AS revenue_amt
  FROM revenue_pre
  GROUP BY 1  

), coord AS (


  SELECT time_period_start_date FROM 
    (SELECT time_period_start_date FROM expenses
    UNION ALL
    SELECT time_period_start_date FROM revenue) t
    GROUP BY 1


)

SELECT
  coord.time_period_start_date
  , e.expense_amt
  , r.revenue_amt
FROM coord
LEFT JOIN expenses e
  USING (time_period_start_date)
LEFT JOIN revenue r
  USING (time_period_start_date)