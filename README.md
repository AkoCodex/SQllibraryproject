#Projeto de Banco de Dados de Livraria

Este projeto consiste na criação de um banco de dados para gerenciamento de uma livraria, contendo livros, clientes e empréstimos registrados.
Além da modelagem e inserção de dados, foram desenvolvidas diversas consultas SQL para exploração e análise das informações.

## Lista de Queries
🔷 Consultas básicas de visualização
Nº	Query	O que faz
1	SELECT * FROM books;	Mostra todos os livros cadastrados
2	SELECT * FROM customers;	Lista todos os clientes
3	SELECT * FROM loans;	Exibe todos os empréstimos registrados
4	SELECT * FROM books WHERE genre = "Fantasia";	Filtra livros do gênero Fantasia
5	SELECT * FROM customers WHERE telephone IS NOT NULL;	Clientes que possuem telefone registrado
🔷 Filtros e comparações
Nº	Query	O que faz
6	SELECT * FROM loans WHERE status = "late" OR status = "borrowed";	Lista empréstimos atrasados ou ainda em posse do cliente
7	SELECT * FROM books WHERE price > 50;	Livros com valor acima de R$50
8	SELECT * FROM loans WHERE loan_date > "2025-05-10";	Empréstimos após determinada data
9	SELECT * FROM books WHERE quantity_of_copies_available &lt 5;	Livros com poucas cópias disponíveis
10	SELECT * FROM loans WHERE status = "late";	Empréstimos atrasados
🔷 Ordenação de dados
Nº	Query	O que faz
11	SELECT * FROM books ORDER BY price DESC;	Livros ordenados do mais caro ao mais barato
12	SELECT * FROM customers ORDER BY name;	Lista clientes em ordem alfabética
13	SELECT * FROM loans ORDER BY loan_previst_devolution_date;	Ordena empréstimos pelo prazo de devolução
14	SELECT * FROM books ORDER BY publish_year DESC;	Livros mais recentes primeiro
🔷 JOINs — Ligando as Tabelas
Nº	Query	O que faz
15	SELECT books.title, customers.name, loans.loan_date, loans.loan_previst_devolution_date, loans.loan_return_date, loans.status FROM loans JOIN books ON loaned_book = books_id JOIN customers ON customer = customers_id;	Lista empréstimos com nome do cliente e título do livro
17	(versão filtrada) WHERE status = "late"	Apenas empréstimos atrasados
18	(versão filtrada) WHERE status = "returned"	Apenas devolvidos
🔷 Agrupamentos e estatísticas
Nº	Query	O que faz
19	SELECT genre, COUNT(*) FROM books GROUP BY genre;	Quantidade de livros por gênero
20	SELECT customers.name, COUNT(*) AS total_loans FROM loans JOIN customers ON customer = customers_id GROUP BY customer;	Quantidade de empréstimos por cliente
21	SELECT books.title, COUNT(*) AS loans_quantity FROM loans JOIN books ON loaned_book = books_id GROUP BY loaned_book ORDER BY COUNT(*) DESC;	Livros mais emprestados
22	SELECT books.title, COUNT(*) AS late_loans FROM loans JOIN books ON loaned_book = books_id WHERE status = "late" GROUP BY loaned_book, books.title ORDER BY COUNT(*) DESC;	Livros mais atrasados nos empréstimos
25	SELECT * FROM loans WHERE loan_return_date > loan_previst_devolution_date OR status = "late";	Empréstimos que já estão ou ficaram atrasados
26	SELECT genre, AVG(price) AS avg_price FROM books GROUP BY genre;	Preço médio dos livros por gênero
27	SELECT customers.name, COUNT(*) AS late_loans FROM loans JOIN customers ON customer = customers_id WHERE status = "late" GROUP BY customer, customers.name ORDER BY COUNT(*) DESC LIMIT 5;	Clientes com mais atrasos
28	SELECT books.title FROM books LEFT JOIN loans ON books_id = loaned_book WHERE loans.loaned_book IS NULL;	Livros nunca emprestados
29	SELECT customers.name FROM customers LEFT JOIN loans ON customers_id = customer WHERE loans.customer IS NULL;	Clientes que nunca pegaram livro


## Objetivo do Projeto

✔ Aprender modelagem e criação de tabelas
✔ Inserir dados reais e fictícios para treino
✔ Desenvolver consultas SQL fundamentais + intermediárias
✔ Treinar JOIN, GROUP BY, ORDER BY, COUNT, AVG e filtros lógicos
✔ Criar base sólida para portfólio e estudo acadêmico

## Como usar este repositório?

Clone o projeto:

git clone https://github.com/AkoCodex/SQllibraryproject.git

Abra o arquivo .sql em qualquer SGBD (MySQL/MariaDB/PostgreSQL etc.)
Execute as consultas para explorar os dados

## Licença

Este projeto é de uso livre para estudo, modificação e expansão.
Sinta-se à vontade para melhorar o código e criar novas consultas! 🚀
