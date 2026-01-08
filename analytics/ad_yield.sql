-- Calculate ad yield (CTR and ROI)
SELECT
    campaign,
    platform,
    SUM(impressions) AS total_impressions,
    SUM(clicks) AS total_clicks,
    SUM(spend) AS total_spend,
    (SUM(clicks) * 1.0 / SUM(impressions)) AS ctr,
    (SUM(clicks) * 10 - SUM(spend)) AS roi_estimate
FROM ads_performance
GROUP BY campaign, platform;
