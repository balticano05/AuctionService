CREATE TABLE "credentials" (
  "id" uuid PRIMARY KEY,
  "password" varchar,
  "secret_word" varchar
);

CREATE TABLE "users" (
  "id" uuid PRIMARY KEY,
  "username" varchar,
  "email" varchar,
  "created_at" varchar,
  "updated_at" varchar,
  "is_deleted" bool
);

CREATE TABLE "roles" (
  "id" uuid PRIMARY KEY,
  "name" varchar,
  "description" text
);

CREATE TABLE "users_roles" (
  "user_id" uuid,
  "role_id" uuid
);

ALTER TABLE "users_roles" ADD FOREIGN KEY ("user_id") REFERENCES "users" ("id");

ALTER TABLE "users_roles" ADD FOREIGN KEY ("role_id") REFERENCES "roles" ("id");

ALTER TABLE "credentials" ADD FOREIGN KEY ("id") REFERENCES "users" ("id");
