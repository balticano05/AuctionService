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