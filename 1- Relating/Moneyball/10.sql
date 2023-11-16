SELECT "first_name","last_name","salary","HR","salaries"."year" FROM "players"
JOIN "performances" ON "players"."id"="performances"."player_id"
JOIN "salaries" ON "players"."id"="salaries"."player_id"
WHERE "salaries"."year"="performances"."year"
ORDER BY "players"."id", "salaries"."year" DESC , "HR" DESC , "salary" DESC;