-- SQLite
-- Unique Campaign Types
SELECT DISTINCT Campaign_Type
FROM            marketing_campaign;

-- Unique Channels
SELECT DISTINCT Channel_Used
FROM            marketing_campaign;

-- Top Performing Channels by ROI
SELECT      Channel_Used,
            ROUND(AVG(ROI),2) AS Average_ROI
FROM        marketing_campaign
GROUP BY    Channel_Used
ORDER BY    Average_ROI DESC;

-- Highest Conversion by Audiences
SELECT      Target_Audience,
            ROUND(AVG(Conversion_Rate),5) AS Average_ConvRate
FROM        marketing_campaign
GROUP BY    Target_Audience
ORDER BY    Average_ConvRate DESC;

-- Most expensive Acquisition Channels
SELECT      Channel_Used,
            ROUND(AVG(Acquisition_Cost),2) AS Average_AcqCost
FROM        marketing_campaign
GROUP BY    Channel_Used
ORDER BY    Average_AcqCost DESC;

-- Best ROI by Campaign Type
SELECT      Campaign_Type,
            ROUND(AVG(ROI),2) AS Average_ROI
FROM        marketing_campaign
GROUP BY    Campaign_Type
ORDER BY    Average_ROI DESC;

-- Most Engagement by Channel
SELECT      Campaign_Type,
            ROUND(AVG(Engagement_Score),2) AS Average_EngScore
FROM        marketing_campaign
GROUP BY    Campaign_Type
ORDER BY    Average_EngScore DESC;

-- Monthly Campaign Volume
SELECT      strftime('%m',Date) AS Month,
            COUNT(*) AS Total_Campaigns
FROM        marketing_campaign
GROUP BY    strftime('%m',Date)
ORDER BY    Month ASC;

-- Best ROI Location
SELECT      Location,
            ROUND(AVG(ROI),2) AS Average_ROI
FROM        marketing_campaign
GROUP BY    Location
ORDER BY    Average_ROI DESC;