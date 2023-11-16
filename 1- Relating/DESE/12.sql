SELECT "districts"."name","per_pupil_expenditure","exemplary" FROM "districts","expenditures","staff_evaluations"
WHERE "districts"."id"="staff_evaluations"."district_id"
AND  "districts"."id"="expenditures"."district_id"
AND "districts"."type" = "Public School District"
AND "per_pupil_expenditure" > (
    SELECT AVG("per_pupil_expenditure") FROM "expenditures"
)
AND "exemplary" > (
    SELECT AVG("exemplary") FROM "staff_evaluations"
)
ORDER BY "exemplary" DESC , "per_pupil_expenditure" DESC;