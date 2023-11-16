SELECT ROUND(AVG(salary),2) AS "average salary", "name"  FROM "salaries" JOIN "teams"
ON "teams"."id" = "salaries"."team_id"
WHERE "salaries"."year"='2001'
GROUP BY "salaries"."team_id"
ORDER BY "average salary" LIMIT 5;