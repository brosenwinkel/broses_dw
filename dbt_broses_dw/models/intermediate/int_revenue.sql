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