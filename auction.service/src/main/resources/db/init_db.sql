CREATE TABLE "lots" (
  "id" uuid PRIMARY KEY,
  "title" varchar,
  "description" text,
  "created_at" timestamp,
  "updated_at" timestamp,
  "starting_price" decimal,
  "current_price" decimal,
  "auction_start" timestamp,
  "auction_end" timestamp
);

CREATE TABLE "statuses" (
  "id" uuid PRIMARY KEY,
  "name" varchar,
  "description" text
);

CREATE TABLE "lots_statuses" (
  "lot_id" uuid,
  "status_id" uuid
);

CREATE TABLE "categories" (
  "id" uuid,
  "name" varchar,
  "description" text,
  "parent_id" uuid
);

CREATE TABLE "lots_categories" (
  "lot_id" uuid,
  "status_id" uuid
);

CREATE TABLE "bids" (
  "lot_id" uuid,
  "user_id" uuid,
  "amount" decimal,
  "created_at" timestamp
);

ALTER TABLE "bids" ADD FOREIGN KEY ("lot_id") REFERENCES "lots" ("id");

ALTER TABLE "categories" ADD FOREIGN KEY ("parent_id") REFERENCES "categories" ("id");

ALTER TABLE "lots_statuses" ADD FOREIGN KEY ("lot_id") REFERENCES "lots" ("id");

ALTER TABLE "lots_statuses" ADD FOREIGN KEY ("status_id") REFERENCES "statuses" ("id");

ALTER TABLE "lots_categories" ADD FOREIGN KEY ("lot_id") REFERENCES "lots" ("id");

ALTER TABLE "lots_categories" ADD FOREIGN KEY ("category_id") REFERENCES "categories" ("id");
