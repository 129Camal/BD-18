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
				(3,'Tribo Touro', 'Olééé!', 'MU!', 'Caminheiros')
				;                
				
insert into Funcao
			
			(Designacao, Descricao)
            values
            ('Chefe de Agrupamento','É o cargo mais alto dentro do Agrupamento.'),
            ('Animador', 'O animador da equipa.'),
            ('Guia', 'O guia da equipa.'),
            ('Tesoureiro', 'O tesoureiro'),
            ('Chefe de Secção','Chefe de uma dada secção')
			;
                
insert into Elemento
			(Nin, Nome, Idade, Sexo, DatadeNasc, Morada, Telemovel, Email, NoitesdeCampo, Seccao_Designacao, Equipa_idEquipa, Funcao_Designacao)
			values
				(1,'Lucas Ribeiro Pereira', 23, 'M', '1994-07-15', 'Bairro 1º Dezembro, nº11', 911117299,'lrpereiraa@gmail.com', 100, 'Caminheiros', 3, 'Animador'),
                (2,'Ricardo Ribeiro Pereira', 21, 'M', '1996-05-23', 'Bairro 1º Dezembro, nº11', 934479955,'ricardo96pereira@gmail.com', 50, 'Caminheiros', 3, 'Tesoureiro'),
                (3,'Pedro Alexandre Amaro Pereira', 23, 'M', '1994-12-21', 'Rua da Igreja, lote 1', 963420539,'pedropereira1994@gmail.com', 100, 'Caminheiros', 3, 'Guia')
                ;
insert into Elemento
			(Nin, Nome, Idade, Sexo, DatadeNasc, Morada, Telemovel, Email, NoitesdeCampo, Seccao_Designacao, Equipa_idEquipa, Funcao_Designacao)
            values
				(4,'Joaquim Silva Antunes Pinto',
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
            
