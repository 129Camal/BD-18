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
