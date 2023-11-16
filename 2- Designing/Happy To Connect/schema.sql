DROP TABLE IF EXISTS "Users";
DROP TABLE IF EXISTS "Schools";
DROP TABLE IF EXISTS "Company";

CREATE TABLE "Users"(
    "first_name" TEXT,
    "last_name" TEXT,
    "username" TEXT,
    "password" TEXT,
    "school_name" TEXT,
    "start_date" NUMERIC,
    "end_date" NUMERIC,
    "type" TEXT,
    "company_name" TEXT,
    FOREIGN KEY("school_name") REFERENCES "Schools"("name")
    FOREIGN KEY("company_name") REFERENCES "Company"("name")

);
CREATE TABLE "Schools"(
    "name" TEXT,
    "type" TEXT,
    "location" TEXT,
    "year" NUMERIC,
    PRIMARY KEY("name")
);
CREATE TABLE "Company"(
    "name" TEXT,
    "industry" TEXT,
    "location" TEXT,
    PRIMARY KEY("name")
);