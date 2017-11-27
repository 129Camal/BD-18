use agrup424;

DELIMITER $$
CREATE procedure InsereAtividade (IN designacao VARCHAR(40), IN descricao VARCHAR(150), IN idEquipa INT, IN dias DATE)

BEGIN
	DECLARE Erro BOOL DEFAULT 0;
    DECLARE CONTINUE HANDLER FOR SQLEXCEPTION SET Erro=1;
    START TRANSACTION;
    
	INSERT INTO  Atividade(Designacao,Descricao, dia, Equipa_idEquipa)
    VALUES (designacao, descricao, dias, idEquipa);

	IF erro
	THEN ROLLBACK; 
	ELSE COMMIT;
	END IF;
END $$


SET @designacao = 'Debates de Personalidades';
SET @descricao ='Forma de promover o diálogo dentro da Equipa';
SET @dias = '2015-03-15';
SET @idEquipa = 1;
CALL InsereAtividade(@designacao,@descricao,@idEquipa,@dias);

