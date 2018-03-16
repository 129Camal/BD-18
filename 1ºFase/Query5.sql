use agrup424;
-- Query5: Os elementos da seccção X que fizeram determinada Atividade Y e quais são as suas funções.
DELIMITER $$ 
CREATE procedure quatro(IN seccaopretendida VARCHAR(45), IN atividade VARCHAR(40))

BEGIN
        
        SELECT nome,Funcao.Designacao FROM Elemento
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
