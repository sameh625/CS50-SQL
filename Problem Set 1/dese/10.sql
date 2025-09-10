SELECT "dis"."name" AS "district_name", "exp"."per_pupil_expenditure"
FROM "districts" AS "dis"
JOIN "expenditures" AS "exp" ON "dis"."id" = "exp"."district_id"
WHERE "dis"."type" = 'Public School District'
ORDER BY "exp"."per_pupil_expenditure" DESC LIMIT 10;
