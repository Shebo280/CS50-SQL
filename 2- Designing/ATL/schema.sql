DROP TABLE IF EXISTS "Passengers";
DROP TABLE IF EXISTS "Airlines";
DROP TABLE IF EXISTS "Flights";
DROP TABLE IF EXISTS "ChecksIn";


CREATE TABLE "Passengers"(
    "id" INTEGER,
    "first_name" TEXT NOT NULL,
    "last_name" TEXT NOT NULL,
    "age" NUMERIC NOT NULL,
    PRIMARY KEY("id")
);
CREATE TABLE "Airlines"(
    "name" TEXT NOT NULL,
    "concourse" TEXT NOT NULL CHECK ("concourse" IN ('A','B','C','D','E','F','T')) ,
    PRIMARY KEY("name")

);
CREATE TABLE "Flights"(
    "number" NUMERIC,
    "airline" TEXT,
    "Destination_Code" TEXT,
    "Source_Code" TEXT,
    "Deprature_Date" NUMERIC,
    "Deprature_TIME" NUMERIC,
    "Arrival_Date" NUMERIC,
    "Arrival_TIME" NUMERIC,
    PRIMARY KEY("number"),
    FOREIGN KEY("airline") REFERENCES "Airlines"("name")
);
CREATE TABLE "ChecksIn"(
    "passenger_id" Integer,
    "airline" TEXT,
    "number" TEXT,
    "Ticket_Date" NUMERIC,
    "Ticker_Time" Numeric,
    FOREIGN KEY("airline") REFERENCES "Airlines"("name"),
    FOREIGN KEY("number") REFERENCES "Flights"("number"),
    FOREIGN KEY("passenger_id") REFERENCES "Passengers"("id")
);