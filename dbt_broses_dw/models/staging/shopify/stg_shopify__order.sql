SELECT
  id
  , customer_id
  , order_number
  , name AS order_name
  , note AS order_note
  , taxes_included
  , currency
  , email
  , shipping_address_first_name
  , shipping_address_last_name
  , shipping_address_city
  , shipping_address_country
  , shipping_address_country_code
  , shipping_address_province
  , shipping_address_province_code
  , shipping_address_zip
  , shipping_address_latitude
  , shipping_address_longitude
  , billing_address_first_name
  , billing_address_last_name
  , billing_address_city
  , billing_address_country
  , billing_address_country_code
  , billing_address_province
  , billing_address_province_code
  , billing_address_zip
  , billing_address_latitude
  , billing_address_longitude
  , test
  , financial_status
  , fulfillment_status
  , created_at
  , CAST(processed_at AS DATE) AS time_period_start_date
  , closed_at
  , total_discounts
  , total_tip_received AS total_tip_received_amt
  , current_total_price AS current_total_price_amt
  , current_subtotal_price AS current_subtotal_price_amt
  , current_total_tax AS current_total_tax_amt
  , total_line_items_price AS total_line_items_price_amt
  , subtotal_price AS subtotal_price_amt
  , total_tax AS total_tax_amt
  , total_price AS total_earned_amt


FROM {{ source('shopify','order') }}