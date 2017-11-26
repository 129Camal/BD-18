use agrup424;

/*DELIMITER $$
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
CALL InsereAtividade(@designacao,@descricao,@idEquipa,@dias);*/
/*INSERT INTO Elemento(Nin,Nome,Idade,DatadeNasc,Morada,Telemovel,Email,NoitesdeCampo,Equipa_idEquipa,Seccao_Designacao,Funcao_Designacao)
	Values (40,'Ricardinho Costa',12,'2005-07-10','Rua dos Peões nº16',912523487,null,30,null,null,'Cozinheiro');*/


DELIMITER $$
CREATE procedure InserirElemento(IN Nin_u INT,IN Nome_u VARCHAR(45),IN Idade_u INT,
								IN DatadeNasc_u DATE,IN Morada_u VARCHAR(45),IN Telemovel_u INT,IN Email_u VARCHAR(45),
                                IN NoitesdeCampo_u INT,IN Equipa_idEquipa_u INT,IN Seccao_Designacao_u VARCHAR(100),
                                IN Funcao_Designacao_u VARCHAR(45))

BEGIN

	INSERT INTO Elemento(Nin,Nome,Idade,DatadeNasc,Morada,Telemovel,Email,NoitesdeCampo,
						Equipa_idEquipa,Seccao_Designacao,Funcao_Designacao)
			VALUES (Nin_u,Nome_u,Idade_u,DatadeNasc_u,Morada_u,Telemovel_u,Email_u,NoitesdeCampo_u,
						AtribuirEquipa(AtribuirSeccao(Idade_u)),AtribuirSeccao(Idade_u),Funcao_Designacao_u);
END; $$

DELIMITER //
CREATE function AtribuirSeccao (Idade_u int)
returns varchar(45)
BEGIN
	
	IF Idade_u BETWEEN 6 AND 10 THEN
		return 'Lobitos';
	END IF;
	IF Idade_u BETWEEN 11 AND 14 THEN
		return 'Exploradores';
    END IF;
    IF Idade_u BETWEEN 15 AND 17 THEN
		return 'Pioneiros';
    END IF;
    IF Idade_u >= 18 THEN
		return 'Caminheiros';
    END IF;

END; //

DELIMITER **
CREATE function AtribuirEquipa (Seccao_u VARCHAR(45))
returns INT
BEGIN
	
    
	 RETURN (SELECT MIN(ElementosEquipa(idEquipa)) FROM Equipa
		where Seccao_Designacao = Seccao_u);
     
     
     /*(SELECT ElementosEquipa(idEquipa) FROM Equipa) FROM Equipa
				where Seccao_Designacao = Seccao_u)
                where SELECT Equipa.idEquipa,;*/
                
	 
END; **

DELIMITER ++
CREATE function ElemementosEquipa(Equipa_u INT)
returns INT
BEGIN
	RETURN(select count(*) FROM Elemento
				WHERE Equipa_idEquipa = Equipa_u); 
END; ++

SET @Nin_u = 41;
SET @Nome_u = 'Ricardinho Costa';
SET @Idade_u = 16;
SET @DatadeNasc_u ='2005-07-10';
SET @Morada_u = 'Rua dos Peões nº16';
SET @Telemovel_u = 912523487;
SET @Email_u = null;
SET @NoitesdeCampo_u = 30;
SET @Equipa_idEquipa_u = null;
SET @Seccao_Designacao_u = null;
SET @Funcao_Designacao_u = 'Cozinheiro';
CALL InserirElemento(@Nin_u,@Nome_u,@Idade_u,@DatadeNasc_u,@Morada_u,@Telemovel_u,@Email_u,@NoitesdeCampo_u,
						@Equipa_idEquipa_u,@Seccao_Designacao_u,@Funcao_Designacao_u);



drop procedure InserirElemento;
drop FUNCTION AtribuirSeccao;
drop FUNCTION AtribuirEquipa;
drop FUNCTION ElemementosEquipa;



