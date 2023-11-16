DROP TABLE IF EXISTS "Ingredients";
DROP TABLE IF EXISTS "Dounts";
DROP TABLE IF EXISTS "Orders";
DROP TABLE IF EXISTS "Customers";


CREATE TABLE "Ingredients"(
  "id" INTEGER,
  "name" TEXT,
  "price" NUMERIC,
  PRIMARY KEY("id")
);
CREATE TABLE "Dounts"(
    "name" TEXT,
    "price" NUMERIC,
    "gluent" TEXT,
    "Ingredeint_id" INTEGER,
    "order_number" INTEGER,
    FOREIGN KEY ("Ingredeint_id") REFERENCES "Ingredients"("id"),
    FOREIGN KEY ("order_number") REFERENCES "ORDERS"("number"),
    PRIMARY KEY("name")
);
CREATE TABLE "Orders"(
    "number" NUMERIC,
    "Customer_ID" INTEGER,
    "Dount_name" TEXT,
    FOREIGN KEY ("Dount_name") REFERENCES "Dounts"("name"),
    FOREIGN KEY ("Customer_ID") REFERENCES "Customers"("id"),
    PRIMARY KEY("number")
);
CREATE TABLE "Customers"(
    "id" INTEGER,
    "first_name" TEXT,
    "last_name" TEXT,
    "order_number" INTEGER,
     FOREIGN KEY ("order_number") REFERENCES "Orders"("number")
);