SELECT
    PARSE_DATE('%Y-%m-%d', CONCAT(sale_month, '-01')) AS time_period_start_date
    , artist
    , team_percentage
    , store AS store_name
    , title AS song_title
    , quantity AS units_sold
    , country_of_sale
    , song_album AS release_type
    , isrc AS isrc_code
    , songwriter_royalties_withheld
    , earnings_usd_ AS total_earned_amt
FROM {{ source('google_sheets', 'distrokid') }}




