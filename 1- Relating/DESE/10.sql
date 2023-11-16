SELECT "name" , "per_pupil_expenditure" from "districts"
JOIN "expenditures" ON "expenditures"."district_id" = "districts"."id"
WHERE "type" = 'Public School District' ORDER BY "per_pupil_expenditure" DESC
LIMIT 10;