ALTER TABLE "bids" ADD FOREIGN KEY ("lot_id") REFERENCES "lots" ("id");

ALTER TABLE "categories" ADD FOREIGN KEY ("parent_id") REFERENCES "categories" ("id");

ALTER TABLE "lots_statuses" ADD FOREIGN KEY ("lot_id") REFERENCES "lots" ("id");

ALTER TABLE "lots_statuses" ADD FOREIGN KEY ("status_id") REFERENCES "statuses" ("id");

ALTER TABLE "lots_categories" ADD FOREIGN KEY ("lot_id") REFERENCES "lots" ("id");

ALTER TABLE "lots_categories" ADD FOREIGN KEY ("category_id") REFERENCES "categories" ("id");