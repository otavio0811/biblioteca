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
esprestimo_id int auto_increment primary key,
livro_id int,
dataemprestimo date not null,
datedevolucao date ,
nomeusuario varchar (100) not null,
foreign key (livro_id) references livros(livros_id)
);
