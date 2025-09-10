CREATE VIEW "june_vacancies" AS
    SELECT"list"."id", "list"."property_type", "list"."host_name", COUNT("avail"."date") AS "days_vacant"
    FROM "listings" AS "list"
    JOIN "availabilities" AS "avail" ON "avail"."listing_id" = "list"."id"
    WHERE "date" LIKE '2023-06-%' AND "avail"."available" = 'TRUE'
    GROUP BY "list"."id", "list"."property_type", "list"."host_name";
