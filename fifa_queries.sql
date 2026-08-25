SELECT Year, ROUND(AVG(REPLACE(Attendance, ',', '')), 0) AS Avg_Attendance_per_game
FROM match_results
GROUP BY Year
ORDER BY Avg_Attendance_per_game DESC;


SELECT City, ROUND(AVG(Attendance) * 1000) AS Exact_Avg_Attendance
FROM match_results
GROUP BY City
ORDER BY AVG(Attendance) DESC;