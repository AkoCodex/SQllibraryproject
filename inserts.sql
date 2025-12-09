INSERT INTO books (title, author, publish_year, genre, price, quantity_of_copies_available) VALUES
("A Cidade Além das Estrelas", "Helena M. Sartori", 2019, "Ficção Científica", 42.90, 7 )

INSERT INTO books (title, author, publish_year, genre, price, quantity_of_copies_available) VALUES
("O Guardião da Névoa", "Rafael D. Monteverde", 2016, "Fantasia", 55.00, 7 )

INSERT INTO books (title, author, publish_year, genre, price, quantity_of_copies_available) VALUES
("O Último Café da Praia Vermelha", "Bianca T. Nogueira", 2021, "Drama/Comtemporâneo", 38.50, 10 )

INSERT INTO books (title, author, publish_year, genre, price, quantity_of_copies_available) VALUES
("Ecos de Màrmore", "Joaquim L. Freitas", 2014, "Romance Histórico", 61.70, 3 )

INSERT INTO books (title, author, publish_year, genre, price, quantity_of_copies_available) VALUES
("Labirinto  de Ferro", "Lucas V. Nakamura", 2018, "Cyberpunk", 47.30, 6 )

INSERT INTO books (title, author, publish_year, genre, price, quantity_of_copies_available) VALUES
("As Folhas de Vidro", "Helena M. Sartori", 2023, "Suspense Psicològico", 52.00, 12 )

INSERT INTO books (title, author, publish_year, genre, price, quantity_of_copies_available) VALUES
("O Relógio que Devora Horas", "Davi R. Valasques", 2017, "Fantasia", 59.20, 8 )

INSERT INTO books (title, author, publish_year, genre, price, quantity_of_copies_available) VALUES
("Crônicas do Reino Fragmentado", "Elisa F. Mirella", 2022, "Fantasia", 46.99, 5 )

INSERT INTO books (title, author, publish_year, genre, price, quantity_of_copies_available) VALUES
("O Homem que Escrevia Susurros", "Lucas V. Nakamura", 2015, "Terror", 35.80, 2 )

INSERT INTO books (title, author, publish_year, genre, price, quantity_of_copies_available) VALUES
("A Receita do Caos", "Juliana P Andrade", 2020, "Terror", 48.65, 9 )



INSERT INTO customers (name, email, telephone, registration_date) VALUES
("Marina Duarte", "marina.duarte@email.com", 11987451230, "2024-11-02")

INSERT INTO customers (name, email, telephone, registration_date) VALUES
("Paulo Henrique Tavares", "paulo.tavares@email.com", 21998842756, "2024-10-17")

INSERT INTO customers (name, email, telephone, registration_date) VALUES
("Sofia Albuquerque", "Sofia.albuquerque@email.com", 71991230044, "2024-09-03")

INSERT INTO customers (name, email, telephone, registration_date) VALUES
("Everton Nogueira", "everton.ng@email.com", 11990187765, "2024-08-21")

INSERT INTO customers (name, email, telephone, registration_date) VALUES
("Lara Maria Vasconcello", "vasconcello.lara@email.com", 31974345581, "2024-08-14")

INSERT INTO customers (name, email, telephone, registration_date) VALUES
("Igor Silveira", "igor.silveira@email.com", 31988440072, "2024-07-11")

INSERT INTO customers (name, email, telephone, registration_date) VALUES
("Ana Clara Mendonza", "clara.mendonza@email.com", 85997742236, "2024-06-28")

INSERT INTO customers (name, email, telephone, registration_date) VALUES
("Paulo Rodrigues Pires", "pires.paulorodrigo@email.com", 62999853319, "2024-05-30")

INSERT INTO customers (name, email, telephone, registration_date) VALUES
("Bruno Fernando", "brunof@email.com", 11973324410, "2024-05-03")

INSERT INTO customers (name, email, telephone, registration_date) VALUES
("Camila Freitas", "camii@email.com", 41990467711, "2024-04-25")



INSERT INTO loans (loaned_book, customer, loan_date, loan_previst_devolution_date, loan_return_date, status) VALUES
(1, 2, "2025-05-20", "2025-06-20", "2025-06-15", "returned")

INSERT INTO loans (loaned_book, customer, loan_date, loan_previst_devolution_date, loan_return_date, status) VALUES
(9, 5, "2025-03-06", "2025-04-19", "2025-04-13", "returned")

INSERT INTO loans (loaned_book, customer, loan_date, loan_previst_devolution_date, loan_return_date, status) VALUES
(4, 7, "2025-06-15", "2025-08-15", NULL, "late")

INSERT INTO loans (loaned_book, customer, loan_date, loan_previst_devolution_date, loan_return_date, status) VALUES
(10, 6, "2025-10-03", "2025-11-08", NULL, "borrowed")

INSERT INTO loans (loaned_book, customer, loan_date, loan_previst_devolution_date, loan_return_date, status) VALUES
(8, 1, "2025-03-30", "2025-05-25", NULL, "borrowed")

INSERT INTO loans (loaned_book, customer, loan_date, loan_previst_devolution_date, loan_return_date, status) VALUES
(4, 2, "2025-07-20", "2025-08-20", NULL, "late")

INSERT INTO loans (loaned_book, customer, loan_date, loan_previst_devolution_date, loan_return_date, status) VALUES
(5, 8, "2025-04-20", "2025-05-25", "2025-05-26", "returned")

INSERT INTO loans (loaned_book, customer, loan_date, loan_previst_devolution_date, loan_return_date, status) VALUES
(3, 2, "2025-06-16", "2025-07-19", "2025-06-16", "returned")

INSERT INTO loans (loaned_book, customer, loan_date, loan_previst_devolution_date, loan_return_date, status) VALUES
(9, 6, "2025-01-15", "2025-03-01", "2025-09-16", "returned")

INSERT INTO loans (loaned_book, customer, loan_date, loan_previst_devolution_date, loan_return_date, status) VALUES
(10, 1, "2025-08-02", "2025-09-04", NULL, "borrowed")

INSERT INTO loans (loaned_book, customer, loan_date, loan_previst_devolution_date, loan_return_date, status) VALUES
(3, 7, "2025-07-27", "2025-09-02", NULL, "late")

INSERT INTO loans (loaned_book, customer, loan_date, loan_previst_devolution_date, loan_return_date, status) VALUES
(5, 7, "2025-02-28", "2025-04-01", NULL, "late")
