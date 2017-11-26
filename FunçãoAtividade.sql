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
CALL InsereAtividade(@designacao,@descricao,@idEquipa,@diasatividade);

DROP procedure InsereAtividade;

CALL InsereAtividade('Escondidas','Integrar as pessoas no grupo')

DELIMITER //
CREATE procedure AtribuirSeccao (IN Idade VARCHAR(20),IN Nin int)

BEGIN
	SELECT Idade,Nome,Seccao_Designacao FROM Elemento;
	IF Idade BETWEEN 6 AND 10 THEN
	INSERT INTO Elemento(Seccao_Designacao)
	VALUES ('Lobitos');
    END IF;
END 
//


