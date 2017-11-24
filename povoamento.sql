insert into seccao
			(Designacao, Simbologia, Patrono)
			value
				('Lobitos', 'Grande Uivo, Círculo de Conselho, Círculo de Parada', 'S. Francisco de Assis'),
                ('Exploradores', 'Flor-de-Lís, Vara, Chapéu, Cantil, Estrela', 'S. Tiago'),
                ('Pioneiros', 'Rosa dos Ventos, Gota de Água, Machada, Icthus', 'S. Pedro'),
                ('Caminheiros', 'Vara bifurcada, Mochila, Tenda, Pão, Evangelho, Fogo', 'S. Paulo')
				;
                
insert into Equipa
			(Nome, Lema, Grito, Seccao_Designacao)
			value
				('Patrulha Falcão', 'Voaremos mais alto!', 'Cri cri!', 'Exploradores'),
				('Equipa Camões', 'Blablabla','Urra!', 'Pioneiros'),
				('Tribo Touro', 'Olééé!', 'MU!', 'Caminheiros'),
                ('Bando Branco', 'Fortes, inteligentes, valentes!', 'Auuu!', 'Lobitos')
				;
                
insert into funcao
			(Designacao, Descricao)
            value
				('Chefe de Agrupamento', 'Mando'),
                ('Chefe de Seccao', 'Mando nos putos')
			;
                
insert into Elemento
			(Nin, Nome, Idade, Sexo, DatadeNasc, Morada, Contacto, Email, NoitesdeCampo, Funcao_Designacao, Seccao_Designacao, Equipa_idEquipa, Elemento_Nin)
			value
				(1, 'Lucas Ribeiro Pereira', 23, 'M', '15/07/1994', 'Bairro 1º Dezembro, nº11 Nogueira Braga', 911117299,'lrpereiraa@gmail.com', 100, 'Chefe de Agrupamento', 'Caminheiros', null, 1),
                (2, 'Ricardo Ribeiro Pereira', 21, 'M', '23/05/1996', 'Bairro 1º Dezembro, nº11 Nogueira Braga', 934479955,'ricardo96pereira@gmail.com', 50, 'Chefe de Seccao', 'Caminheiros', null, 1)
			;