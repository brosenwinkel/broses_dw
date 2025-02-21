SELECT
  sales_period AS time_period_start_date
  , artist
  , release_title
  , song_title
  , label AS label_name
  , tc_song_id AS tunecore_isrc_code
  , COALESCE(optional_isrc, tc_song_id) AS isrc_code
  , upc
  , youtube_video_id
  , store_name
  , country_of_sale
  , sales_type
  , release_type
  , _units_sold AS units_sold
  , per_unit_price
  , exchange_rate
  , commission
  , _file
  , net_sales_currency
  , net_sales AS net_sales_amt
  , currency AS total_earned_currency
  , total_earned AS total_earned_amt
FROM {{ source('tunecore','tunecore_sales') }}