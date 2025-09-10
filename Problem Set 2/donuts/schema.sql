CREATE TABLE "ingredients" (
    "id" INTEGER,
    "ingredients" TEXT,
    "price_per_unit" NUMERIC,
    PRIMARY KEY ("id")
);

CREATE TABLE "donuts" (
    "id" INTEGER,
    "ingredients_id" INTEGER,
    "name" TEXT,
    "gluten" INTEGER CHECK ("gluten" IN (1,0)),
    "price" NUMERIC,
    PRIMARY KEY ("id"),
    FOREIGN KEY ("ingredients_id") REFERENCES "ingredients"("id")
);

CREATE TABLE "customers" (
    "id" INTEGER,
    "order_id" INTEGER,
    "first_name" TEXT NOT NULL,
    "last_name" TEXT NOT NULL,
    PRIMARY KEY ("id"),
    FOREIGN KEY ("order_id") REFERENCES "orders"("id")
);

CREATE TABLE "orders" (
    "id" INTEGER,
    "order_num" INTEGER,
    "customer_id" INTEGER,
    PRIMARY KEY ("id"),
    FOREIGN KEY ("customer_id") REFERENCES "customers"("id")
);

CREATE TABLE "orders_history" (
    "order_id" INTEGER,
    "customer_id" INTGER,
    PRIMARY KEY ("order_id", "customer_id"),
    FOREIGN KEY ("order_id") REFERENCES "orders"("id"),
    FOREIGN KEY ("customer_id") REFERENCES "customers"("id")
);


