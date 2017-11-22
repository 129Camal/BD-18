drop table elemento;                      
drop table seccao;
drop table equipa;                    
                  
insert into Elemento
			(Nome, Idade, Sexo, DatadeNasc, Morada, Contacto, Email, NoitesdeCampo, Cargo, Seccao_Designacao, Equipa_idEquipa)
			value
				('Lucas Ribeiro Pereira', 23, 'M', '15/07/1994', 'Bairro 1º Dezembro, nº11', 911117299,'lrpereiraa@gmail.com', 100, 'Animador', 'Caminheiros', 3),
                ('Ricardo Ribeiro Pereira', 21, 'M', '23/05/1996', 'Bairro 1º Dezembro, nº11', 934479955,'ricardo96pereira@gmail.com', 50, 'Tesoureiro', 'Caminheiros', 3),
                ('Pedro Alexandre Amaro Pereira', 23, 'M', '21/12/1994', 'Rua da Igreja, lote 1', 963420539,'pedropereira1994@gmail.com', 100, 'Guia', 'Caminheiros', 3)
                ;
                
insert into Elemento
			(Nome, Idade, Sexo, DatadeNasc, Morada, Contacto, Email, NoitesdeCampo, Cargo, Seccao_Designacao)
            value
				('Joaquim Silva Antunes Pinto',
					55,
                    'M',
                    '1962/04/30', 
                    'Av Joao XXI, 487 - 4º A Braga', 
                    964751691, 
                    'quimpinto2010@gmail.com', 
                    48, 
                    'Dirigente de Agrupamento', 
                    'Dirigentes');

insert into Equipa
			(Nome, Lema, Grito, Seccao_Designacao)
			value
				('Patrulha Falcão', 'Voaremos mais alto!', 'Cri cri!', 'Exploradores'),
				('Equipa Camões', 'Blablabla','Urra!', 'Pioneiros'),
				('Tribo Touro', 'Olééé!', 'MU!', 'Caminheiros')
				;                
                    
insert into seccao
			(Designacao, Simbologia, Patrono)
			value
				('Lobitos', 'Grande Uivo, Círculo de Conselho, Círculo de Parada', 'S. Francisco de Assis'),
                ('Exploradores', 'Flor-de-Lís, Vara, Chapéu, Cantil, Estrela', 'S. Tiago'),
                ('Pioneiros', 'Rosa dos Ventos, Gota de Água, Machada, Icthus', 'S. Pedro'),
                ('Caminheiros', 'Vara bifurcada, Mochila, Tenda, Pão, Evangelho, Fogo', 'S. Paulo'),
                ('Dirigentes',null,'S. Nuno de Sta Maria')
				;