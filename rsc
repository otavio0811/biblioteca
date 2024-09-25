drop database Biblioteca;
create database Biblioteca;
use biblioteca;
create table autores (
autor_id int auto_increment primary key, 
nome varchar(150) not null,
nacionalidade varchar (150)
);

create table livros (
livros_id int auto_increment primary key,
titulo varchar(250) not null,
autor_id int,
anopublicacao year,
genero varchar (100),
foreign key (autor_id) references autores(autor_id)
);

create table emprestimos (
emprestimo_id int auto_increment primary key,
livro_id int,
dataemprestimo date not null,
datedevolucao date ,
nomeusuario varchar (100) not null,
foreign key (livro_id) references livros(livros_id)
);

INSERT INTO autores (nome, nacionalidade) VALUES
('gabriel garcia marquez', 'colombiano'),
('j.k. rowling', 'canadense'),
('margaret atwood', 'canadense'),
('harper lee', 'americana');


INSERT INTO livros (titulo, autor_id, anopublicacao, genero) VALUES
('cem anos de solidao', 1, 1967, 'ficcao'),
('harry potter e a pedra filosofal', 2, 1997, 'fantasia'),
('1984', 3, 1949, 'distopia'),
('o sol e para todos', 4, 1960, 'drama'),
('a menina que roubava livros', 2, 2005, 'ficcao historica'),
('o codigo da vinci', 2, 2003, 'suspense'),
('o hobbit', 2, 1937, 'fantasia'),
('matar um mockingbird', 4, 1960, 'drama'),
('o grande gatsby', 4, 1925, 'romance');




INSERT INTO emprestimos (livro_id, dataemprestimo, datedevolucao, nomeusuario) VALUES 
(1, '2024-09-01', '2024-09-15', 'joao silva'),
(2, '2024-09-05', NULL, 'maria oliveira'),
(3, '2024-09-10', '2024-09-20', 'pedro santos');


SELECT * FROM autores;

SELECT livros.titulo, autores.nome AS autor, livros.anopublicacao, livros.genero
FROM livros
JOIN autores ON livros.autor_id = autores.autor_id;

SELECT emprestimos.emprestimo_id, livros.titulo, emprestimos.dataemprestimo, emprestimos.datedevolucao, emprestimos.nomeusuario
FROM emprestimos
JOIN livros ON emprestimos.livro_id = livros.livros_id;






