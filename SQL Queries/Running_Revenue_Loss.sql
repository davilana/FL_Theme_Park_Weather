CREATE TABLE "Running Total Revenue Loss Over Time" AS
SELECT 
    Date,
    SUM(Adjusted_Revenue) AS Daily_Revnue,
    SUM(SUM(Adjusted_Revenue)) OVER(
        ORDER BY Date
    ) AS Running_Total_Revenue
FROM Adjusted_Model
GROUP BY Date
ORDER BY Date;
