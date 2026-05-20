-- 1. Total complaints by financial product
SELECT 
    product,
    COUNT(*) AS total_complaints
FROM complaints
GROUP BY product
ORDER BY total_complaints DESC;

-- 2. Monthly complaint trend
SELECT 
    strftime('%Y-%m', date_received) AS complaint_month,
    COUNT(*) AS total_complaints
FROM complaints
GROUP BY complaint_month
ORDER BY complaint_month;

-- 3. Complaints by company
SELECT 
    company,
    COUNT(*) AS total_complaints
FROM complaints
GROUP BY company
ORDER BY total_complaints DESC
LIMIT 10;

-- 4. Timely response rate by product
SELECT 
    product,
    COUNT(*) AS total_complaints,
    SUM(CASE WHEN timely_response = 'Yes' THEN 1 ELSE 0 END) AS timely_responses,
    ROUND(
        100.0 * SUM(CASE WHEN timely_response = 'Yes' THEN 1 ELSE 0 END) / COUNT(*), 
        2
    ) AS timely_response_rate
FROM complaints
GROUP BY product
ORDER BY timely_response_rate ASC;

-- 5. Most common complaint issues
SELECT 
    issue,
    COUNT(*) AS total_complaints
FROM complaints
GROUP BY issue
ORDER BY total_complaints DESC
LIMIT 10;
