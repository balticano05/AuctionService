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

CREATE TABLE "credentials_roles" (
  "credential_id" uuid,
  "role_id" uuid
);

ALTER TABLE "credentials_roles" ADD FOREIGN KEY ("credential_id") REFERENCES "credentials" ("id");

ALTER TABLE "credentials_roles" ADD FOREIGN KEY ("role_id") REFERENCES "roles" ("id");

ALTER TABLE "credentials" ADD FOREIGN KEY ("id") REFERENCES "users" ("id");
