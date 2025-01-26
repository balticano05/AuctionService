CREATE TABLE "categories" (
  "id" uuid PRIMARY KEY,
  "name" varchar,
  "description" text,
  "parent_id" uuid
);