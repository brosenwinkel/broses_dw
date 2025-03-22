SELECT
        media_id
        , hidden
        , id
        , like_count
        , parent_id
        , text
        , owner_id
        , owner_username
        , created_time
FROM {{ source('instagram', 'media_comment') }}
