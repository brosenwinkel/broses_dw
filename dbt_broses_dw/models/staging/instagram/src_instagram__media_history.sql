SELECT
        created_time AS time_period_start_date
        , id AS media_id
        , media_product_type
        , media_type
        , user_id
        , username
        , caption
        , is_story
        , carousel_album_id
        , shortcode
        , is_comment_enabled
        , ig_id
        , permalink
        , media_url
        , thumbnail_url
FROM {{ source('instagram', 'media_history') }}
WHERE owner_id IS NOT NULL 
OR (owner_id IS NULL AND media_product_type = 'STORY')
