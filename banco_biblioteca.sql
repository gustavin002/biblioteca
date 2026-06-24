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
	foreign key (id_autor) references autor (id_autor)
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

INSERT INTO autor (nome) VALUES
('Machado de Assis'),
('Clarice Lispector'),
('George Orwell'),
('J.K. Rowling');

INSERT INTO livro (titulo, id_autor) VALUES
('Dom Casmurro', 1),
('Memórias Póstumas de Brás Cubas', 1),
('A Hora da Estrela', 2),
('1984', 3),
('Harry Potter e a Pedra Filosofal', 4);

INSERT INTO usuario (nome, email, senha, role) VALUES
('Gustavo Silva', 'gustavo@email.com', '123456', 0),
('Pedro Souza', 'pedro@email.com', '654321', 0),
('Admin', 'admin@email.com', 'admin', 1);

INSERT INTO emprestimo (data_retirada, data_devolucao, id_livro, id_usuario) VALUES
('2026-06-04', '2026-06-10', 1, 1),
('2026-06-05', '2026-06-15', 4, 2),
('2026-06-11', '2026-06-20', 5, 1);