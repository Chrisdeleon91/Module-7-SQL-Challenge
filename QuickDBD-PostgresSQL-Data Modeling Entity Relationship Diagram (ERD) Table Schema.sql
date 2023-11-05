-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/05zmh0
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.

-- Modify this code to update the DB schema diagram.
-- To reset the sample schema, replace everything with
-- two dots ('..' - without quotes).

CREATE TABLE "Transaction" (
    "id" int   NOT NULL,
    "date" TIMESTAMP   NOT NULL,
    "amount" float   NOT NULL,
    "card" VARCHAR(20)   NOT NULL,
    "id_merchant" int   NOT NULL,
    CONSTRAINT "pk_Transaction" PRIMARY KEY (
        "id"
     )
);

CREATE TABLE "CreditCard" (
    "card" VARCHAR(20)   NOT NULL,
    "cardholder_id" int   NOT NULL,
    CONSTRAINT "pk_CreditCard" PRIMARY KEY (
        "card"
     )
);

CREATE TABLE "CardHolder" (
    "id" int   NOT NULL,
    "name" VARCHAR(20)   NOT NULL,
    CONSTRAINT "pk_CardHolder" PRIMARY KEY (
        "id"
     )
);

CREATE TABLE "Merchant" (
    "id" int   NOT NULL,
    "name" VARCHAR(40)   NOT NULL,
    "id_merchant_category" int   NOT NULL,
    CONSTRAINT "pk_Merchant" PRIMARY KEY (
        "id"
     )
);

CREATE TABLE "MerchantCategory" (
    "id" int   NOT NULL,
    "name" VARCHAR(20)   NOT NULL,
    CONSTRAINT "pk_MerchantCategory" PRIMARY KEY (
        "id"
     )
);

ALTER TABLE "Transaction" ADD CONSTRAINT "fk_Transaction_card" FOREIGN KEY("card")
REFERENCES "CreditCard" ("card");

ALTER TABLE "Transaction" ADD CONSTRAINT "fk_Transaction_id_merchant" FOREIGN KEY("id_merchant")
REFERENCES "Merchant" ("id");

ALTER TABLE "CardHolder" ADD CONSTRAINT "fk_CardHolder_id" FOREIGN KEY("id")
REFERENCES "CreditCard" ("cardholder_id");

ALTER TABLE "MerchantCategory" ADD CONSTRAINT "fk_MerchantCategory_id" FOREIGN KEY("id")
REFERENCES "Merchant" ("id_merchant_category");

