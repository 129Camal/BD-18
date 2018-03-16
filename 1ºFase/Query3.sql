use agrup424;

-- Query3: Que funções existem em cada seccção
DELIMITER $$
CREATE procedure funcoes(IN seccaopretendida VARCHAR(45))

	BEGIN
    
    SELECT DISTINCT Funcao.Designacao AS 'Funções' FROM Elemento
	INNER JOIN Funcao 
		ON Funcao.Designacao = Elemento.Funcao_Designacao
        INNER JOIN Seccao 
			ON Elemento.Seccao_Designacao = seccao.Designacao
			WHERE seccao.Designacao = seccaopretendida;

	END $$
    
SET @seccaopretendida = 'Lobitos';
CALL funcoes(@seccaopretendida);

DROP procedure funcoes;