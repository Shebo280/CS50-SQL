SELECT "name" FROM "graduation_rates"
JOIN "schools" ON "schools"."id"="graduation_rates"."school_id"
WHERE "graduated"==100;