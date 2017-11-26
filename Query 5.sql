use agrup424;
-- Query5 : O Patrono de todas as equipas que participaram numa dada Atividade ordenados alfabeticamente.
DELIMITER $$ 
CREATE procedure cinco(IN atividade VARCHAR(40))

BEGIN
        
        SELECT DISTINCT Patrono FROM Seccao
			INNER JOIN Equipa
				ON Equipa.Seccao_Designacao = Seccao.Designacao
				INNER JOIN Atividade
					ON Atividade.Equipa_idEquipa = Equipa.idEquipa
                    WHERE Atividade.designacao = atividade;
            

END; $$

SET @atividade ='Convivio de Natal';
CALL cinco(@atividade);

DROP procedure cinco;
