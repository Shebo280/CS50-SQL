
-- *** The Lost Letter ***
-- Getting the package ID by using the content of the letter which is congratulatory
SELECT "id" FROM "packages" WHERE "contents" LIKE '%congratulatory%';
-- Getting the addresss_ID by using package ID in the scans table.
SELECT "address_id" FROM "scans" WHERE "package_id"= 384;
-- Getting the type and address by using address_ID in the addresses table.
SELECT * FROM "addresses" WHERE "id" = 432 OR "id" = 854 ;
-- Merging the Queries --
Select * from "addresses" WHERE "id" IN (
    Select "address_id" FROM "scans" WHERE "package_id" = (
        SELECT "id" FROM "packages" WHERE "contents" LIKE '%congratulatory%'
    )
);
-- *** The Devious Delivery ***
-- Getting the package ID,Content by knowing the the from_address_id is NULL
SELECT "id","content" from "packages" WHERE "from_address_id" IS NULL;
-- Getting the addresss_ID by using package ID in the scans table --
SELECT "address_id" FROM "scans" WHERE "package_id"= 5098;
-- Getting the type and address by using address_ID in the addresses table.
SELECT * FROM "addresses" WHERE "id" = 50 OR "id" = 348 ;
-- Merging Queries but using package ID only not content --
Select * from "addresses" WHERE "id" IN (
    Select "address_id" FROM "scans" WHERE "package_id" = (
        SELECT "id" from "packages" WHERE "from_address_id" IS NULL
    )
);
-- *** The Forgotten Gift ***
-- First we will get the to_address_id by using the address which is 728 Maple Place.
Select "id" from "addresses" WHERE "address" = '109 Tileston Street';
-- Second we will get the from_address_id by using the address which is 109 Tileston Street.
Select "id" from "addresses" WHERE "address" = '728 Maple Place';
-- Third we will get the package ID using both the to_address_id and from_address_id
Select * from "packages" WHERE "to_address_id" = 4983 AND "from_address_id" = 9873
-- We will get the driver ID from package ID and choose the action which is pick only there is no drop yet.
SELECT * from "scans" WHERE "package_id" = 9523
-- We will get the driver name from driver ID
SELECT "name" FROM "drivers" WHERE "id"=17;