
-- ------------------------------------------------------
-- ------------------------------------------------------
-- Universidade do Minho
-- Mestrado Integrado em Engenharia Informática
-- Unidade Curricular de Bases de Dados
-- 
-- Caso de Estudo: Agrupamento 424
-- Povoamento inicial da base de dados
-- Novembro/2017
-- ------------------------------------------------------
-- ------------------------------------------------------

--
-- Esquema: "Agrup424"
USE `agrup424` ;

--
-- Permissão para fazer operações de remoção de dados.
SET SQL_SAFE_UPDATES = 0;

--
-- Povoamento da tabela "Elemento"
INSERT INTO elemento
	(Nine, Nome, Idade, DataDeNascimento, Morada, Contacto, Cargo, Chefe, NoitesDeCampo)
	VALUES 
		(1, 'Lucas Ribeiro Pereira', 23, '1994/07/15', 'Bairro 1º Dezembro, nº11', 911117299, 'Animador', 0, 100),
		(2, 'Ricardo Ribeiro Pereira', 21,'1996/05/23',	'Bairro 1º Dezembro, nº11', 934479955, 'Tesoureiro', 0, 50),
		(3, 'Pedro Alexandre Amaro Pereira', 23, '1994/12/21', 'Rua da Igreja, lote 1', 963420539, 'Guia', 0, 100)
	;
--
-- DELETE FROM elemento;
-- SELECT * FROM elemento;

--
-- Povoamento da tabela "Equipa"
INSERT INTO equipa
	(ID, Nome, Lema, Grito)
	VALUES 
		(1, 'Patrulha Falcão', 'Voaremos mais alto!', 'Cri cri!'),
		(2, 'Equipa Camões', 'Blablabla','Urra!'),
		(3, 'Tribo Touro', 'Olééé!', 'MU!')
	;

--
-- DELETE FROM ClienteTelefones;
-- SELECT * FROM ClienteTelefones;

--
-- Povoamento da tabela "Seccao"
INSERT INTO seccao
	(Nome)
	VALUES 
		('Lobitos'),
		('Exploradores'),
		('Pioneiros'),
		('Caminheiros')
	;
--
-- DELETE FROM ClienteCupoes;
-- SELECT * FROM ClienteCupoes;

-- ------------------------------------------------------
-- <fim>
-- grupo 31
-- ------------------------------------------------------
