CREATE VIEW "available" AS
    SELECT "list"."id", "list"."property_type", "list"."host_name", "avail"."date"
    FROM "listings" AS "list"
    JOIN "availabilities" AS "avail" ON "avail"."listing_id" = "list"."id"
    WHERE "avail"."available" = 'TRUE';
