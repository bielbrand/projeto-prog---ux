CREATE TABLE "users" (
  "ID" SERIAL PRIMARY KEY,
  "Nome" varchar(40),
  "CPF" int
);

CREATE TABLE "tasks" (
  "id" SERIAL PRIMARY KEY,
  "Nome" varchar(50),
  "Complemento" varchar(100),
  "Prazo" timestamp
);

CREATE TABLE "categories" (
  "id" integer PRIMARY KEY,
  "Categoria" varchar
);
