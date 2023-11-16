SELECT "schools"."name" , "districts"."name" from "schools"
JOIN "districts"
ON "schools"."district_id" = "districts"."id"
LIMIT 10;