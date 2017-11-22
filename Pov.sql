create database agrup424;

use agrup424;

create table elemento(idElemento int not null auto_increment,
					  Nome varchar(45),
                      Idade int,
                      DatadeNasc varchar(45),
                      Morada varchar(45),
                      Contacto int,
                      EMail varchar(45),
                      NoitesdeCampo int,
                      Cargo varchar(45),
                      Equipa int,
                      Seccao varchar(45),
                      primary key (idElemento),
                      foreign key (Equipa) references equipa(idEquipa),
                      foreign key (Seccao) references seccao(Designacao))
					  ;

create table equipa(idEquipa int not null auto_increment,
					Nome varchar(45),
                    Lema varchar(45),
                    Grito varchar(45),
                    Seccao varchar(45),
                    primary key (idEquipa),
                    foreign key (Seccao) references seccao(Designacao))
					;

create table seccao(Designacao varchar(45),
                    Simbologia varchar(200),
                    Patrono varchar(45),
                    primary key (Designacao))
					;
                    
drop table elemento;                      
drop table seccao;
drop table equipa;                    
                  
insert into elemento
			(Nome, Idade, DatadeNasc, Morada, EMail, NoitesdeCampo, Cargo, Equipa, Seccao)
			value
				('Lucas Ribeiro Pereira', 23, '15/07/1994', 'Bairro 1º Dezembro, nº11', 'lrpereiraa@gmail.com', 100, 'Animador', 3, 'Caminheiros'),
                ('Ricardo Ribeiro Pereira', 21, '23/05/1996', 'Bairro 1º Dezembro, nº11', 'ricardo96pereira@gmail.com', 50, 'Tesoureiro', 3, 'Caminheiros'),
                ('Pedro Alexandre Amaro Pereira', 23, '21/12/1994', 'Rua da Igreja, lote 1', 'pedropereira1994@gmail.com', 100, 'Guia', 3, 'Caminheiros')
                ;

insert into equipa
			(Nome, Lema, Grito, Seccao)
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
                
                
select * from elemento;                

              