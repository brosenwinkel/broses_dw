WITH media_insights AS (

        SELECT * FROM {{ source('instagram', 'media_insights') }}
)
SELECT
        id AS media_id
        , like_count
        , comment_count
        , video_photo_impressions
        , video_photo_reach
        , video_photo_saved
        , carousel_album_engagement
        , carousel_album_impressions
        , carousel_album_reach
        , carousel_album_saved
        , story_impressions
        , story_reach
        , navigation
        , reel_reach
        , reel_saved
        , video_photo_engagement
        , story_exits
        , story_replies
        , story_taps_back
        , story_taps_forward
        , story_swipe_forward
        , reel_comments
        , reel_likes
        , reel_shares
        , reel_total_interactions
        
FROM media_insights
