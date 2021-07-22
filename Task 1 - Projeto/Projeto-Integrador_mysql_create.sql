CREATE DATABASE Ecommerce;

USE Ecommerce;

CREATE TABLE `Produto` (
	`id` bigint NOT NULL AUTO_INCREMENT,
	`nome_produto` varchar(500) NOT NULL,
	`descricao` varchar(2000) NOT NULL,
	`caracteristica` varchar(2000) NOT NULL,
	`valor` bigint NOT NULL,
	`categoria_id` bigint NOT NULL,
	PRIMARY KEY (`id`)
);

CREATE TABLE `Categoria` (
	`id` bigint NOT NULL AUTO_INCREMENT,
	`tipo` varchar(300) NOT NULL,
	`descricao_categoria` varchar(300) NOT NULL,
	`palavra_chave` varchar(300) NOT NULL,
	PRIMARY KEY (`id`)
);

CREATE TABLE `Usuario` (
	`id` bigint NOT NULL AUTO_INCREMENT,
	`nome_completo` varchar(500) NOT NULL,
	`email` varchar(500) NOT NULL,
	`senha` varchar(500) NOT NULL,
	`adm` BOOLEAN NOT NULL,
	PRIMARY KEY (`id`)
);

ALTER TABLE `Produto` ADD CONSTRAINT `Produto_fk0` FOREIGN KEY (`categoria_id`) REFERENCES `Categoria`(`id`);

SELECT * FROM produto;



