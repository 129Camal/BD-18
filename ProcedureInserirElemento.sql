DELIMITER $$
CREATE procedure InserirElemento(IN Nin_u INT,IN Nome_u VARCHAR(45),INOUT Idade_u INT,
								IN DatadeNasc_u DATE,IN Morada_u VARCHAR(45),IN Telemovel_u INT,
                                IN Email_u VARCHAR(45),IN NoitesdeCampo_u INT,
                                IN Funcao_Designacao_u VARCHAR(45))
	
BEGIN
	DECLARE erro bool DEFAULT 0;
    DECLARE CONTINUE HANDLER FOR sqlexception SET erro =1;
	SET @Seccao_Designacao = AtribuirSeccao(@Idade);
    SET @Equipa_idEquipa = AtribuirEquipa();
	INSERT INTO Elemento(Nin,Nome,Idade,DatadeNasc,Morada,Telemovel,Email,NoitesdeCampo,
						Equipa_idEquipa,Seccao_Designacao,Funcao_Designacao)
			VALUES (Nin_u,Nome_u,Idade_u,DatadeNasc_u,Morada_u,Telemovel_u,Email_u,NoitesdeCampo_u,
						@Equipa_idEquipa,@Seccao_Designacao,Funcao_Designacao_u);
	IF erro THEN rollback;
    else commit;
    end if;
END $$
DELIMITER ;

DELIMITER $$
CREATE function AtribuirSeccao (Idade int)
returns varchar(45)
BEGIN
	CASE 
		WHEN Idade BETWEEN 6 AND 10 THEN  RETURN 'Lobitos';
        WHEN Idade BETWEEN 11 AND 14 THEN  RETURN 'Exploradores';
        WHEN Idade BETWEEN 15 AND 17 THEN  RETURN 'Pioneiros';
        WHEN Idade >= 18 THEN  RETURN 'Caminheiros';
	END CASE;
END $$
DELIMITER ;

DELIMITER $$
CREATE function AtribuirEquipa()
returns int
BEGIN
	return (select distinct FLOOR(RAND()*(count(idEquipa)-1)+1) from Equipa
		where Seccao_Designacao = @Seccao_Designacao);
END $$
DELIMITER ;

SET @Idade =12;
SET @Nin = 74;
SET @Seccao_Designacao = null;
SET @Equipa_idEquipa = null;

call InserirElemento(@Nin,'Teste Teste4',@Idade,'1995-6-6',
						'rua das ruas',912345987,null,100,'Cozinheiro');
                        
drop procedure InserirElemento;
drop function AtribuirEquipa;
drop function AtribuirSeccao;
