-- v8.0

CREATE TABLE "Sources" (
    "id" INT   NOT NULL,
    "name" VARCHAR(255)   NOT NULL,
    CONSTRAINT "pk_Sources" PRIMARY KEY (
        "id"
     )
);

CREATE TABLE "Inventory" (
    "id" INT   NOT NULL,
    "source_id" INT   NOT NULL,
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

