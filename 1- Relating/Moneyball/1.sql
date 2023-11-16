SELECT "year",Round(AVG(salary),2) AS "Average Salaries" FROM "salaries"
GROUP BY year
ORDER BY year DESC;