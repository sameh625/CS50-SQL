SELECT "name"
FROM "schools" AS "s"
JOIN "graduation_rates" ON "s"."id" = "graduation_rates"."school_id"
GROUP BY "s"."district_id";
