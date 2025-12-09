CREATE TABLE "books" (
    "books_id" INTEGER PRIMARY KEY AUTOINCREMENT,
    "title" TEXT NOT NULL,
    "author" TEXT NOT NULL,
    "publish_year" INTEGER,
    "genre" TEXT,
    "price" REAL NOT NULL,
    "quantity_of_copies_available" INTEGER
);

CREATE TABLE "customers" (
    "customers_id" INTEGER PRIMARY KEY AUTOINCREMENT,
    "name" TEXT NOT NULL,
    "email" TEXT NOT NULL UNIQUE,
    "telephone" NUMERIC,
    "registration_date" TEXT NOT NULL
);

CREATE TABLE "loans" (
    "loans_id" INTEGER PRIMARY KEY AUTOINCREMENT,
    "loaned_book" INTEGER NOT NULL,
    "customer" INTEGER NOT NULL,
    "loan_date" TEXT NOT NULL,
    "loan_previst_devolution_date" TEXT NOT NULL,
    "loan_return_date" TEXT,
    "status" TEXT NOT NULL,
    FOREIGN KEY("customer") REFERENCES "customers"("customers_id"),
    FOREIGN KEY("loaned_book") REFERENCES "books"("books_id")
);
