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
                (4,'Trivium','Ziga-liga','Yay!', 'Lobitos'),
                (5,'Tribo tribal', 'UIPI!', 'YESSS', 'Exploradores')				;                
				;
                
insert into Atividade(idAtividade, Designacao,Descricao, Equipa_idEquipa, dia)
			values
            (1,'Debates de Personalidades','Forma de promover o diálogo dentro da Equipa',1,'2015-03-15'),
            (2,'Debates de Personalidades','Forma de promover o diálogo dentro da Equipa',3,'2015-04-24'),
            (3,'Caminhada Florestal','Caminhada pelas zonas desflorestadas para mostrar as consequências',2,'2016-01-24'),
            (4,'Concurso de Jogo do Galo','Desenvolvimento do raciocinio',4,'2016-02-16'),
            (5,'Concurso de Xadrez','Desenvolvimento do raciocinio',3,'2016-04-04'),
            (6,'Pontes Flutuantes','Percurso radical',2,'2016-08-18'),
            (7,'Convivio de Natal','Forma de promover o diálogo dentro do Agrupamento',1,'2016-12-24'),
            (8,'Convivio de Natal','Forma de promover o diálogo dentro do Agrupamento',2,'2016-12-24'),
            (9,'Convivio de Natal','Forma de promover o diálogo dentro do Agrupamento',3,'2016-12-24'),
            (10,'Convivio de Natal','Forma de promover o diálogo dentro do Agrupamento',4,'2016-12-24')
            ;

insert into Funcao
			
			(Designacao, Descricao)
            values
            ('Chefe de Agrupamento','É o cargo mais alto dentro do Agrupamento.'),
            ('Chefe Tesoureiro','Chefe de contas'),
            ('Chefe Secretário','Chefe da papelada'),
            ('Chefe dos Lobitos','Lidera os Lobitos'),
            ('Chefe dos Exploradores','Lidera os Exploradores'),
            ('Chefe dos Pioneiros','Lidera os Pioneiros'),
            ('Chefe dos Caminheiros','Lidera os Caminheiros'),
            ('Relações Públicas','Trata das relações públicas da equipa'),
            ('Cozinheiro','Trata das refeições da equipa'),
            ('Animador', 'Anima a equipa.'),
            ('Guia', 'Coordenador da equipa'),
            ('Tesoureiro', 'Pessoa que lida com o dinheiro da equipa'),
            ('Secretário','Trata da papelada da equipa'),
            ('Guarda-material','Guarda o material da equipa'),
            ('Socorrista','Cuida das questões de saúde da equipa')
			;

                
insert into Elemento
			(Nin, Nome, Idade, Sexo, DatadeNasc, Morada, Telemovel, Email, NoitesdeCampo, Seccao_Designacao, Equipa_idEquipa, Funcao_Designacao)
			values
				
                (002,'João António Jubileu', 40, 'M', '1977-01-05', 'Rua de Barros, nº8', 914236742, 'joaojub@gmail.com', 145, null, null, 'Chefe Tesoureiro'),
                (003,'Fernanda Carvalho', 35, 'F', '1982-01-9', 'Rua da Universidade, nº63', 914342136, 'nanda@gmail.com', 140, null, null, 'Chefe Secretário'),
				(004,'Manuel Francisco Carvalho', 30, 'M', '1087-02-18', 'Rua das Cruzes, nº68', 963265642, 'mfc@gmail.com', 123, null, null, 'Chefe dos Lobitos'),
                (005,'Maria João Antunes', 28, 'F', '1989-01-9', 'Bairro do Pão, nº73', 932456336, 'mja@gmail.com', 130, null, null, 'Chefe dos Pioneiros'),
                (006,'Paulo Pinto', 31, 'M', '1987-12-01', 'Rua dos Peões, nº 14 andar: 2ªEsq', 919238456, 'pPinto@hotmail.com', 150, null, null,'Chefe dos Exploradores'),
                (007,'João Filipe Antunes', 27, 'M', '1992-08-19','Bairro do Pão, nº73', 97895356, 'joan@gmail.com', 120, null, null,'Chefe dos Caminheiros'),
                (008,'José Messias', 22, 'M', '1995-07-15', 'Rua da Igreja, nº14', 914324569,'jm@gmail.com', 90, 'Caminheiros', 3, 'Relações Públicas'),
                (009,'Ricardo Carvalho', 21, 'M', '1996-02-23', 'Rua da Igreja, nº19', 934324555,'ricardocarvz@gmail.com', 71, 'Caminheiros', 3, 'Cozinheiro'),
                (010,'Lucas Ribeiro Pereira', 23, 'M', '1994-07-15', 'Bairro 1º Dezembro, nº11', 911117299,'lrpereiraa@gmail.com', 86, 'Caminheiros', 3, 'Animador'),
                (011,'Ricardo Ribeiro Pereira', 21, 'M', '1996-05-23', 'Bairro 1º Dezembro, nº11', 934479955,'ricardo96pereira@gmail.com', 60, 'Caminheiros', 3, 'Tesoureiro'),
                (012,'Pedro Alexandre Amaro Pereira', 23, 'M', '1994-12-21', 'Rua da Igreja, lote 1', 963420539,'pedropereira1994@gmail.com', 100, 'Caminheiros', 3, 'Guia'),
                (013,'Frederico Daniel Pereira Pinto', 21, 'M', '1996-01-21', 'Rua Nossa Senhora de Fátima, nº260', 931657636, 'a73639@alunos.uminho.pt', 85, 'Caminheiros', 3, 'Secretário'),
                (014,'Adriana Margarida Martins Gonçalves', 21, 'F', '1996-06-16', 'Rua dos Peões nº128', 965748146, 'adrianinha@sapo.pt', 100, 'Caminheiros', 3,'Guarda-material'),
                (015,'Ricardo Guerra Leal', 21, 'M', '1996-06-08','Rua dos Peões nº102', 987350156, '2pack@gmail.com', 94, 'Caminheiros', 3,'Socorrista'),
                (016,'Raul Antunes', 12, 'M', '2005-04-25', 'Rua da Igreja, nº17', 914234569,'ra@gmail.com', 40, 'Exploradores', 1, 'Relações Públicas'),
                (017,'Maria Ines Pereira', 13, 'F', '2004-02-23', 'Travessa do Tojal, nº19', 935643255,'maria@gmail.com', 30, 'Exploradores', 1, 'Cozinheiro'),
                (018,'Maria Pascoal', 14, 'F', '2003-07-15', 'Bairro do Pão, nº13', 911423599,'jop@sapo.pt', 26, 'Exploradores', 1, 'Animador'),
                (019,'João Leal', 13, 'M', '2004-03-20', 'Travevessa da Saude, nº11', 937995515,null, 21, 'Exploradores', 1, 'Tesoureiro'),
                (020,'Joaquina Maria Pereira', 14, 'F', '2003-11-01', 'Rua do Passadiço, nº8 andar: 3ªEsquerdo', 963420539,'pedro2003@gmail.com', 19, 'Exploradores', 1, 'Guia'),
                (021,'Ricardo Canela', 13, 'M', '2004-05-21', 'Rua de Vieira, nº19', 924587612, 'ricardinho10@sapo.pt', 20, 'Exploradores', 1, 'Secretário'),
                (022,'Pedro Almeida', 12, 'M', '2005-08-04', 'Praça do Tojal nº28', 93254189, null, 19, 'Exploradores', 1,'Guarda-material'),
                (023,'Ricardo Santos', 11, 'M', '2006-03-15','Rua da Universidade nº25', 927350156, null, 24, 'Exploradores', 1,'Socorrista'),
                (024,'Miguel Saraiva', 16, 'M', '2001-03-16', 'Rua Garrett, nº4', 912356569,'ms@gmail.com', 18, 'Pioneiros', 2, 'Relações Públicas'),
                (025,'Candida Carvalho', 17, 'F', '2000-01-13', 'Rua da Igreja, nº27', 912451555,'candidacarvz@gmail.com', 16, 'Pioneiros', 2, 'Cozinheiro'),
                (026,'Olga Pereira', 16, 'F', '2001-07-15', 'Rua Nossa Senhora de Fátima, nº260', 964253599,'olgapeira2001@sapo.pt', 15, 'Pioneiros', 2, 'Animador'),
                (027,'Olivia Ortiz', 17, 'F', '1999-12-23', 'Travessa da Saúde, nº112', 934479955,'oo1999@gmail.com', 18, 'Pioneiros', 2, 'Tesoureiro'),
                (028,'Paulo Costa', 15, 'M', '2002-12-21', 'Rua da Igreja, lote 1', 963592339,'ogordinho@gmail.com', 13, 'Pioneiros', 2, 'Guia'),
                (029,'Paulo Cerineu', 16, 'M', '2001-06-24', 'Rua 25 de Abril, nº10', 979656846, 'paulo_cerineu@hotmail.com', 15, 'Pioneiros', 2, 'Secretário'),
                (030,'Rui Pedro', 15, 'M', '2002-04-06', 'Rua dos Deuses nº12', 915374346, null , 12, 'Pioneiros', 2,'Guarda-material'),
                (031,'Sara Ferreira', 16, 'F', '2001-09-12','Rua Garrett nº16', 921568745, 'sarinha13@gmail.com', 16, 'Pioneiros', 2, 'Socorrista'),
                (032,'Jerónimo Sousa', 7, 'M', '2010-05-15', 'Travessa do Tojal, nº20', 912365679,'js@gmail.com', 5, 'Lobitos', 4, 'Relações Públicas'),
                (033,'Adriana Guedes', 9, 'F', '2008-12-13', 'Travessa do Entroncamento, nº122', 912458565,'ricardocarvz@gmail.com', 7, 'Lobitos', 4, 'Cozinheiro'),
                (034,'Rodrigo Pinto', 9, 'M', '2007-12-02', 'Rua das Cruzes, nº71', 913216299,'rodrigopinto2007@hotmail.com', 6, 'Lobitos', 4, 'Animador'),
                (035,'Rubén Martins', 8, 'M', '2009-07-03', 'Travessa do Entroncamento, nº129', 938765455,null, 5, 'Lobitos', 4, 'Tesoureiro'),
                (036,'João António Cidade Vieira', 7, 'M', '2010-05-11', 'Rua da Igreja, nº68', 963265419, null, 6, 'Lobitos', 4, 'Guia'),
                (037,'Manuel Curopos Monteiro', 6, 'M', '2011-01-31', 'Travessa das Cruzes, nº73', 934256636, null, 5, 'Lobitos', 4, 'Secretário'),
                (038,'Paula Daniela Sousa Martins', 9, 'F', '2008-12-05','Rua dos Peões nº15', 912345431, null, 9, 'Lobitos', 4,'Guarda-material'),
                (039,'Maria Inês Pinto', 8, 'F', '2010-08-08','Rua dos Deuses nº62', 915674356, null, 9, 'Lobitos', 4,'Socorrista')
                
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
            
