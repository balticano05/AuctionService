CREATE TABLE "bids" (
  "lot_id" uuid PRIMARY KEY,
  "user_id" uuid,
  "amount" decimal,
  "created_at" timestamp
);