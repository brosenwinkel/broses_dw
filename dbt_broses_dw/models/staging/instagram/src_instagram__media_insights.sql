
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
        , reel_aggregated_all_plays_count
        , reel_clips_replays_count
        , reel_comments
        , reel_likes
        , reel_plays
        , reel_shares
        , reel_total_interactions
        
FROM {{ source('instagram', 'media_insights') }}
