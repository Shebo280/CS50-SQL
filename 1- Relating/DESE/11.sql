SELECT "name","per_pupil_expenditure","graduated" FROM "schools","graduation_rates","expenditures"
WHERE "schools"."id"="graduation_rates"."school_id"
AND "schools"."district_id"="expenditures"."district_id"
ORDER BY "per_pupil_expenditure" DESC , "name";