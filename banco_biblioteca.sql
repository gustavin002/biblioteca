create database biblioteca;
use biblioteca;

create table autor (
    id_autor int primary key auto_increment,
    nome varchar(255) not null
);

create table usuario (
    id_usuario int primary key auto_increment,
    nome varchar(255) not null,
    email varchar(100) not null,
    senha varchar(100) not null, 
    role tinyint(1)
);

create table livro (
    id_livro int primary key auto_increment,
    titulo varchar(255) not null,
    id_autor int not null,
	foreign key (id_autor) references autor(id_autor)
);

create table emprestimo (
    id_emprestimo int primary key auto_increment,
    data_retirada date not null,
    data_devolucao date,
    id_livro int not null,
    id_usuario int not null,
	foreign key (id_livro) references livro(id_livro),
	foreign key (id_usuario) references usuario(id_usuario)
);