
use agrup424;

select * from elemento;
select * from equipa;
select * from seccao;
select * from elemento where Morada='Bairro 1º Dezembro, nº11';

SELECT * FROM Elemento
    INNER JOIN Seccao ON Seccao.Designacao = Elemento.Seccao_Designacao
	WHERE 
	Elemento.Funcao_designacao = "Chefe" AND Elemento.Seccao_Designacao = "Lobitos";


	