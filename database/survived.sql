CREATE VIEW IF NOT EXISTS "survived_stats" AS
SELECT 
    "survived",
    "pclass",
    "sex",
    COUNT(*) AS "total_count"
FROM "train"
GROUP BY "survived", "pclass" , "sex";

CREATE VIEW IF NOT EXISTS "age_group" AS
SELECT 
    CASE
        WHEN "age" < 18 THEN 'Under 18'
        WHEN "age" BETWEEN 18 and 35 THEN '18-35'
        WHEN "age" BETWEEN 36 and 50 THEN '36-50'
        ELSE '50+'
    END AS "age_group",
    "sex",
    COUNT(*) AS "survived_count"
FROM "train"
WHERE "survived" = 1
GROUP BY "age_group", "sex";