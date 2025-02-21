SELECT
    date AS time_period_start_date
    , description
    , CASE WHEN debit_credit < 0 THEN debit_credit*-1 ELSE 0 END AS debits_usd
    , CASE WHEN debit_credit >= 0 THEN debit_credit ELSE 0 END AS credits_usd
    , balance
FROM {{ source('google_sheets', 'bluevine') }}




