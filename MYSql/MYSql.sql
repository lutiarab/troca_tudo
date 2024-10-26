create database lutiaracamila_trocatudo;

use lutiaracamila_trocatudo;

drop table usuarios;

CREATE TABLE usuarios (
 id INT AUTO_INCREMENT PRIMARY KEY,
 name VARCHAR(200),
 email VARCHAR(200) unique,
 senha VARCHAR(200),
 avatar varchar(100),
 curtidas_totais int,
 descurtidas_totais int
);

CREATE TABLE produtos (
 id INT AUTO_INCREMENT PRIMARY KEY,
 name VARCHAR(255),
 imagem VARCHAR(255),
 curtidas int,
 descurtidas int
);

CREATE TABLE comentarios (
 id INT AUTO_INCREMENT PRIMARY KEY,
 comentario VARCHAR(255),
 cidade VARCHAR(100),
 estado varchar(100),
 usuarios_id INT,
 FOREIGN KEY (usuarios_id) REFERENCES usuarios(id),
 produtos_id int,
 foreign key (produtos_id) references produtos(id)
);

CREATE TABLE curtidas (
 id INT AUTO_INCREMENT PRIMARY KEY,
 curtidas int,
 descurtidas int,
 produtos_id int,
 foreign key (produtos_id) references produtos(id)
);

