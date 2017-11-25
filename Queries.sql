
use agrup424;

select * from elemento;
select * from equipa;
select * from seccao;
select * from funcao;
select * from elemento where Morada='Bairro 1º Dezembro, nº11';

CALL InsereAtividade(11,'Escondidas','Integrar as pessoas no grupo','2017-11-20',2);

SELECT Atividade.Equipa_idEquipa AS 'ID de Equipa',COUNT(*) AS 'Nº de Atividades Realizadas pela Tribo Touro' FROM Atividade
	WHERE Atividade.Equipa_idEquipa = 2;

SELECT * FROM Elemento
    INNER JOIN Seccao ON Seccao.Designacao = Elemento.Seccao_Designacao
	WHERE 
	Elemento.Funcao_designacao = "Chefe" AND Elemento.Seccao_Designacao = "Lobitos";

SELECT Elemento.Nome,Elemento.Idade
		FROM Elemento GROUP BY Idade;

SELECT * FROM Elemento
       INNER JOIN EQUIPA ON Equipa.idEquipa = Elemento.Equipa_idEquipa
       WHERE Elemento.Equipa_idEquipa = '2';
       
SELECT Nin,Nome,funcao_designacao AS 'Função',seccao_designacao AS 'Seccção'  FROM Elemento;

SELECT COUNT(*) AS 'Nº de Escuteiros do Agrupamento' FROM Elemento


 
	



	