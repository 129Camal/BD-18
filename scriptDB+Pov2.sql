use agrup424;

insert into seccao
			(Designacao, Simbologia, Patrono)
			values
				('Lobitos', 'Grande Uivo, Círculo de Conselho, Círculo de Parada', 'S. Francisco de Assis'),
                ('Exploradores', 'Flor-de-Lís, Vara, Chapéu, Cantil, Estrela', 'S. Tiago'),
                ('Pioneiros', 'Rosa dos Ventos, Gota de Água, Machada, Icthus', 'S. Pedro'),
                ('Caminheiros', 'Vara bifurcada, Mochila, Tenda, Pão, Evangelho, Fogo', 'S. Paulo')
				;

insert into Equipa
			(idEquipa, Nome, Lema, Grito, Seccao_Designacao)
			values
				(1,'Patrulha Falcão', 'Voaremos mais alto!', 'Cri cri!', 'Exploradores'),
				(2,'Equipa Camões', 'Blablabla','Urra!', 'Pioneiros'),
				(3,'Tribo Touro', 'Olééé!', 'MU!', 'Caminheiros'),
                (4,'Trivium','Ziga-liga','Yay!', 'Lobitos')
				;                
				
insert into Funcao
			
			(Designacao, Descricao)
            values
            ('Chefe de Agrupamento','É o cargo mais alto dentro do Agrupamento.'),
            ('Chefe','Chefe de alguma secção.'),
            ('Animador', 'Anima a equipa.'),
            ('Guia', 'Coordenador da equipa'),
            ('Tesoureiro', 'Pessoa que lida com o dinheiro'),
            ('Chefe de Secção','Chefe de uma dada secção'),
            ('Secretário','Trata da papelada'),
            ('Guarda-material','Guarda o material'),
            ('Socorrista','Socorre')
            ;
                
insert into Elemento
			(Nin, Nome, Idade, Sexo, DatadeNasc, Morada, Telemovel, Email, NoitesdeCampo, Seccao_Designacao, Equipa_idEquipa, Funcao_Designacao)
			values
				(002,'Manuel Francisco Carvalho', 30, 'M', '1087-02-18', 'Rua das Cruzes, nº68', 963265642, 'mfc@gmail.com', 123, 'Lobitos', null, 'Chefe'),
                (003,'Maria João Antunes', 28, 'F', '1989-01-9', 'Bairro do Pão, nº73', 932456336, 'mja@gmail.com', 130, 'Pioneiros', null, 'Chefe'),
                (004,'Paulo Pinto', 31, 'M', '1987-12-01', 'Rua dos Peões, nº 14 andar: 2ªEsq', 919238456, 'pPinto@hotmail.com', 150, 'Exploradores', null,'Chefe'),
                (005,'João Filipe Antunes', 27, 'M', '1992-08-19','Bairro do Pão, nº73', 97895356, 'joan@gmail.com', 120, 'Caminheiros', null,'Chefe'),
				(006,'Lucas Ribeiro Pereira', 23, 'M', '1994-07-15', 'Bairro 1º Dezembro, nº11', 911117299,'lrpereiraa@gmail.com', 86, 'Caminheiros', 3, 'Animador'),
                (007,'Ricardo Ribeiro Pereira', 21, 'M', '1996-05-23', 'Bairro 1º Dezembro, nº11', 934479955,'ricardo96pereira@gmail.com', 60, 'Caminheiros', 3, 'Tesoureiro'),
                (008,'Pedro Alexandre Amaro Pereira', 23, 'M', '1994-12-21', 'Rua da Igreja, lote 1', 963420539,'pedropereira1994@gmail.com', 100, 'Caminheiros', 3, 'Guia'),
                (009,'Frederico Daniel Pereira Pinto', 21, 'M', '1996-01-21', 'Rua Nossa Senhora de Fátima, nº260', 931657636, 'a73639@alunos.uminho.pt', 85, 'Caminheiros', 3, 'Secretário'),
                (010,'Adriana Margarida Martins Gonçalves', 21, 'F', '1996-06-16', 'Rua dos Peões nº128', 965748146, 'adrianinha@sapo.pt', 100, 'Caminheiros', 3,'Guarda-material'),
                (011,'Ricardo Guerra Leal', 21, 'M', '1996-06-08','Rua dos Peões nº102', 987350156, '2pack@gmail.com', 94, 'Caminheiros', 3,'Socorrista'),
                (012,'Maria Pascoal', 14, 'F', '2003-07-15', 'Bairro do Pão, nº13', 911423599,'jop@sapo.pt', 26, 'Exploradores', 1, 'Animador'),
                (013,'João Leal', 13, 'M', '2004-03-20', 'Travevessa da Saude, nº11', 937995515,null, 21, 'Exploradores', 1, 'Tesoureiro'),
                (014,'Joaquina Maria Pereira', 14, 'F', '2003-11-01', 'Rua do Passadiço, nº8 andar: 3ªEsquerdo', 963420539,'pedro2003@gmail.com', 19, 'Exploradores', 1, 'Guia'),
                (015,'Ricardo Canela', 13, 'M', '2004-05-21', 'Rua de Vieira, nº19', 924587612, 'ricardinho10@sapo.pt', 20, 'Exploradores', 1, 'Secretário'),
                (016,'Pedro Almeida', 12, 'M', '2005-08-04', 'Praça do Tojal nº28', 93254189, null, 19, 'Exploradores', 1,'Guarda-material'),
                (017,'Ricardo Santos', 11, 'M', '2006-03-15','Rua da Universidade nº25', 927350156, null, 24, 'Exploradores', 1,'Socorrista'),
                (018,'Olga Pereira', 16, 'F', '2001-07-15', 'Rua Nossa Senhora de Fátima, nº260', 964253599,'olgapeira2001@sapo.pt', 15, 'Pioneiros', 2, 'Animador'),
                (019,'Olivia Ortiz', 17, 'F', '1999-12-23', 'Travessa da Saúde, nº112', 934479955,'oo1999@gmail.com', 18, 'Pioneiros', 2, 'Tesoureiro'),
                (020,'Paulo Costa', 15, 'M', '2002-12-21', 'Rua da Igreja, lote 1', 963592339,'ogordinho@gmail.com', 13, 'Pioneiros', 2, 'Guia'),
                (021,'Paulo Cerineu', 16, 'M', '2001-06-24', 'Rua 25 de Abril, nº10', 979656846, 'paulo_cerineu@hotmail.com', 15, 'Pioneiros', 2, 'Secretário'),
                (022,'Rui Pedro', 15, 'M', '2002-04-06', 'Rua dos Deuses nº12', 915374346, null , 12, 'Pioneiros', 2,'Guarda-material'),
                (023,'Sara Ferreira', 16, 'F', '2001-09-12','Rua Garrett nº16', 921568745, 'sarinha13@gmail.com', 16, 'Pioneiros', 2, 'Socorrista'),
                (024,'Rodrigo Pinto', 9, 'M', '2007-12-02', 'Rua das Cruzes, nº71', 913216299,'rodrigopinto2007@hotmail.com', 6, 'Lobitos', 4, 'Animador'),
                (025,'Rubén Martins', 8, 'M', '2009-07-03', 'Travessa do Entroncamento, nº129', 938765455,null, 5, 'Lobitos', 4, 'Tesoureiro'),
                (026,'João António Cidade Vieira', 7, 'M', '2010-05-11', 'Rua da Igreja, nº68', 963265419, null, 6, 'Lobitos', 4, 'Guia'),
                (027,'Manuel Curopos Monteiro', 6, 'M', '2011-01-31', 'Travessa das Cruzes, nº73', 934256636, null, 5, 'Lobitos', 4, 'Secretário'),
                (028,'Paula Daniela Sousa Martins', 9, 'F', '2008-12-05', 'Rua dos Peões nº15', 912345431, null, 9, 'Lobitos', 4,'Guarda-material'),
                (029,'Maria Inês Pinto', 8, 'F', '2010-08-08','Rua dos Deuses nº62', 915674356, null, 9, 'Lobitos', 4,'Socorrista')
                
                ;
                
insert into Elemento
			(Nin, Nome, Idade, Sexo, DatadeNasc, Morada, Telemovel, Email, NoitesdeCampo, Seccao_Designacao, Equipa_idEquipa, Funcao_Designacao)
            values
				(001,'Joaquim Silva Antunes Pinto',
					55,
                    'M',
                    '1962-04-30', 
                    'Av Joao XXI, 487 - 4º A Braga', 
                    964751691, 
                    'quimpinto2010@gmail.com', 
                    212, 
                    null,
                    null,
                    'Chefe de Agrupamento');

SELECT * FROM Elemento;
            
