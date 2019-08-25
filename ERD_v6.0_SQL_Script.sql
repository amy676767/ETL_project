-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.

-- v6.0
-- This data model is not complete and was created to serve as a basis for getting started

CREATE TABLE "Vehicles" (
    "id" INT   NOT NULL,
    "year" INT   NOT NULL,
    "model" VARCHAR(255)   NOT NULL,
    "vehicle_type" VARCHAR(255)   NOT NULL,
    "brand" VARCHAR(255)   NOT NULL,
    CONSTRAINT "pk_Vehicles" PRIMARY KEY (
        "id"
     )
);

CREATE TABLE "Sources" (
    "id" INT   NOT NULL,
    -- Autotrader.com, Ebay.com, etc...
    "name" VARCHAR(255)   NOT NULL,
    CONSTRAINT "pk_Sources" PRIMARY KEY (
        "id"
     )
);

-- This inventory table will be the result of joining the following entities together: "Vehicles", "Autotrader.com", "Ebay.com"
CREATE TABLE "Inventory" (
    "id" INT   NOT NULL,
    "source_id" INT   NOT NULL,
    "vehicle_id" INT   NOT NULL,
    "condition" VARCHAR(255)   NOT NULL,
    "engine" VARCHAR(255)   NOT NULL,
    "exterior_color" VARCHAR(255)   NOT NULL,
    "drive_type" VARCHAR(255)   NOT NULL,
    "fuel_type" VARCHAR(255)   NOT NULL,
    "interior_color" VARCHAR(255)   NOT NULL,
    "make" VARCHAR(255)   NOT NULL,
    "mileage" INT   NOT NULL,
    "model" VARCHAR(255)   NOT NULL,
    "price" MONEY   NOT NULL,
    "transmission" VARCHAR(255)   NOT NULL,
    "seller_name" VARCHAR(255)   NOT NULL,
    "url" VARCHAR(MAX)   NOT NULL,
    "vin" VARCHAR(100)   NOT NULL,
    "year" INT   NOT NULL,
    CONSTRAINT "pk_Inventory" PRIMARY KEY (
        "id"
     )
);

ALTER TABLE "Inventory" ADD CONSTRAINT "fk_Inventory_source_id" FOREIGN KEY("source_id")
REFERENCES "Sources" ("id");

ALTER TABLE "Inventory" ADD CONSTRAINT "fk_Inventory_vehicle_id" FOREIGN KEY("vehicle_id")
REFERENCES "Vehicles" ("id");

