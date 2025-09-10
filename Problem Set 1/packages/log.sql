
-- *** The Lost Letter ***
SELECT "id" FROM "addresses"
WHERE "address" = '900 Somerville Avenue'

SELECT "id"
FROM "packages"
WHERE "from_address_id"=(
    SELECT "id" FROM "addresses"
    WHERE "address" = '900 Somerville Avenue'
) AND "contents"='Congratulatory letter'

SELECT *
FROM "scans"
WHERE "package_id"=(
    SELECT "id"
    FROM "packages" WHERE "from_address_id"=(
        SELECT "id" FROM "addresses"
        WHERE "address" = '900 Somerville Avenue'
    ) AND "contents"='Congratulatory letter'
);
-- *** The Devious Delivery ***
SELECT "id" FROM "packages"
WHERE "from_address_id" IS NULL;

SELECT "id" FROM "scans" WHERE "package_id"=(
    SELECT "id" FROM "packages"
    WHERE "from_address_id" IS NULL
) AND "action"='Drop';

SELECT "address" FROM "addresses" WHERE "id"=(
    SELECT "id" FROM "scans" WHERE "package_id"=(
    SELECT "id" FROM "packages"
    WHERE "from_address_id" IS NULL
) AND "action"='Drop'
);


-- *** The Forgotten Gift ***

