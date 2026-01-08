-- Ingest advertising performance data
SELECT
    ad_id,
    campaign,
    platform,
    impressions,
    clicks,
    spend,
    currency,
    date
FROM ads_performance;
