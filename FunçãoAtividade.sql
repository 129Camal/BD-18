use agrup424;

DELIMITER //
CREATE procedure InsereAtividade (IN actividade VARCHAR(20), IN descricao VARCHAR(150))

BEGIN
	INSERT INTO  Atividade(Designacao,Descricao)
    VALUES (atividade, descricao);
END
//

DELIMITER // 

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
