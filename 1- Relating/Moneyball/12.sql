SELECT * FROM (
    SELECT "first_name","last_name"
    FROM "players"
    JOIN "salaries" ON "players"."id"="salaries"."player_id"
    JOIN "performances" ON "players"."id"="performances"."player_id"
    WHERE "performances"."year"='2001'
    AND "performances"."year"="salaries"."year"
    AND "H" !=0
    ORDER BY "salary"/"H","first_name","last_name"
    LIMIT 10
)
INTERSECT
SELECT * FROM (
    SELECT "first_name","last_name"
    FROM "players"
    JOIN "salaries" ON
    "players"."id" = "salaries"."player_id"
    JOIN "performances" ON
    "players"."id" = "performances"."player_id"
    WHERE  "salaries"."year"='2001'
    AND "performances"."year"="salaries"."year"
    AND RBI!=0
    ORDER BY "salary" / "RBI", "first_name", "last_name"
    LIMIT 10
) ORDER BY "last_name";