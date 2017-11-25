
use agrup424;

select * from elemento;
select * from equipa;
select * from seccao;
select * from funcao;
select * from elemento where Morada='Bairro 1º Dezembro, nº11';

SELECT * FROM Elemento
    INNER JOIN Seccao ON Seccao.Designacao = Elemento.Seccao_Designacao
	WHERE 
	Elemento.Funcao_designacao = "Chefe" AND Elemento.Seccao_Designacao = "Lobitos";

SELECT Elemento.Nome,Elemento.Idade
		FROM Elemento GROUP BY Idade;

SELECT * FROM Elemento
       INNER JOIN EQUIPA ON Equipa.idEquipa = Elemento.Equipa_idEquipa
       WHERE Elemento.Equipa_idEquipa = '2';
       
SELECT Nin,Nome,funcao_designacao,seccao_designacao FROM Elemento;

SELECT CONCAT(Elemento.Funcao_Designacao,Nome) AS LINDO FROM Elemento
	WHERE Nome IN ('Joaquim Silva Antunes Pinto','Fernanda Carvalho');
    
SELECT Nin,Nome FROM Elemento
	where Idade > (SELECT avg(Idade) FROM Elemento);
    
SELECT Designacao FROM Funcao
	WHERE Designacao IN (LIKE'chefe'); 
	