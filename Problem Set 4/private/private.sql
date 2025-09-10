CREATE TABLE "triplets" (
   "id" INTEGER,
   "begin" INTEGER,
   "end" INTEGER,
   PRIMARY KEY ("id")
);

INSERT INTO "triplets" ("id", "begin", "end") VALUES
(14, 98, 4),
(114, 3, 5),
(618, 72, 9),
(630, 7, 3),
(932, 12, 5),
(2230, 50, 7),
(2346, 44, 10),
(3041, 14, 5);

CREATE VIEW "message" AS
    SELECT SUBSTR("sentence", "begin", "end") AS "phrase" FROM "sentences"
    JOIN "triplets" ON "triplets"."id" = "sentences"."id";
