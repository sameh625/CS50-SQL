CREATE VIEW "frequently_reviewed" AS
    SELECT "list"."id", "list"."property_type", "list"."host_name", COUNT("rev"."id") AS "reviews"
    FROM "listings" AS "list"
    JOIN "reviews" AS "rev" ON "rev"."listing_id" = "list"."id"
    GROUP BY "list"."id", "list"."property_type", "list"."host_name"
    ORDER BY "reviews" DESC , "property_type", "host_name" LIMIT 100;
