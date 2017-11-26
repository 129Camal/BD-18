
use agrup424;

select * from elemento;
select * from equipa;
select * from seccao;
select * from funcao;
select * from elemento where Morada='Bairro 1º Dezembro, nº11';

DELIMITER $$ 
CREATE procedure quatro(IN seccaopretendida VARCHAR(45), IN atividade VARCHAR(40))

BEGIN
        
        SELECT * FROM Elemento
			INNER JOIN Funcao 
			ON Elemento.Funcao_Designacao = Funcao.Designacao 
				INNER JOIN Seccao 
				ON Elemento.Seccao_Designacao = Seccao.Designacao
					INNER JOIN Atividade 
                    ON Elemento.Equipa_idEquipa = Atividade.Equipa_idEquipa
					WHERE (Seccao.Designacao = seccaopretendida AND Atividade.Designacao = atividade);
        

END; $$

SET @seccao = 'Exploradores';
SET @atividade ='Convivio de Natal';
CALL quatro(@seccao,@atividade);

DROP procedure quatro;

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

-- Query 1: Lista com Nin, Nome , Função e Secção a que cada elemento pertence; 
SELECT Nin,Nome,funcao_designacao AS 'Função',seccao_designacao AS 'Seccção'  FROM Elemento;

-- Query 2: Nº de Escuteiros do Agrupamento;
SELECT COUNT(*) AS 'Nº de Escuteiros do Agrupamento' FROM Elemento

-- Query3: Que funções existem em cada seccção
-- DELIMITER $$
-- CREATE procedure funcoes(IN seccaopretendida VARCHAR(45))

	-- BEGIN
    
    -- SELECT Elemento.funcao_designacao AS 'Funções' FROM Elemento
	-- INNER JOIN Seccao ON Seccao.Designacao = Elemento.Seccao_Designacao
    -- WHERE Elemento.Seccao_Designacao = seccaopretendida;

	-- END $$
    
-- SET @seccaopretendida = 'Lobitos';
-- CALL funcoes(@seccaopretendida);

-- DROP procedure funcoes;

-- Query 4: Os elementos da seccção X que fizeram determinada Atividade Y e quais são as suas funções.







	