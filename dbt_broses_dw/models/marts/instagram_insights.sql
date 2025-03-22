
WITH media AS (
SELECT
        media_id
        , media_product_type
        , media_type
        , username
        , caption
        , permalink
        , media_url

FROM {{ ref('src_instagram__media_history') }}

), insights AS (

SELECT
        media_id
        , max(like_count) AS like_count
        , max(comment_count) AS comment_count
        , max(video_photo_impressions) AS video_photo_impressions
        , max(video_photo_reach) AS video_photo_reach
        , max(video_photo_saved) AS video_photo_saved
        , max(reel_reach) AS reel_reach
        , max(reel_saved) AS reel_saved
        , max(video_photo_engagement) AS video_photo_engagement
        , max(reel_aggregated_all_plays_count) AS reel_aggregated_all_plays_count
        , max(reel_clips_replays_count) AS reel_clips_replays_count
        , max(reel_comments) AS reel_comments
        , max(reel_likes) AS reel_likes
        , max(reel_plays) AS reel_plays
        , max(reel_shares) AS reel_shares
        , max(reel_total_interactions) AS reel_total_interactions
FROM {{ ref('src_instagram__media_insights') }}
GROUP BY 1

)

SELECT
        media.media_id
        , media.media_product_type
        , media.media_type
        , media.username
        , media.caption
        , media.permalink
        , media.media_url
        , insights.like_count
        , insights.comment_count
        , insights.video_photo_impressions
        , insights.video_photo_reach
        , insights.video_photo_saved
        , insights.reel_reach
        , insights.reel_saved
        , insights.video_photo_engagement
        , insights.reel_aggregated_all_plays_count
        , insights.reel_clips_replays_count
        , insights.reel_comments
        , insights.reel_likes
        , insights.reel_plays
        , insights.reel_shares
        , insights.reel_total_interactions
FROM media
LEFT JOIN insights
        ON media.media_id = insights.media_id