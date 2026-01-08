-- Subscription churn analysis
SELECT
    channel,
    COUNT(*) AS total_subscriptions,
    SUM(CASE WHEN status = 'CANCELLED' THEN 1 ELSE 0 END) AS churned,
    (SUM(CASE WHEN status = 'CANCELLED' THEN 1 ELSE 0 END) * 1.0 / COUNT(*)) AS churn_rate
FROM subscriptions
GROUP BY channel;
