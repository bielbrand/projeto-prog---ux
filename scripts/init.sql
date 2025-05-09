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

INSERT INTO "users" (
  "Nome",
  "CPF"
) VALUES
('Lucas', 123456789),
('Ana', 987654321),
('João', 456789123);
