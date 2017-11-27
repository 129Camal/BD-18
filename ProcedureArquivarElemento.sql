USE agrup424;

DELIMITER $$
CREATE procedure ArquivarElemento(INOUT Nin_u INT)
BEGIN
	CREATE TABLE if not exists ElementoArquivado LIKE Elemento;
	DELETE from Elemento where Elemento.Nin = Nin_u;
END $$
DELIMITER ;

DELIMITER $$	
CREATE TRIGGER tr_ArquivarElem BEFORE DELETE 
ON Elemento
FOR EACH ROW
BEGIN
    INSERT INTO ElementoArquivado
	SELECT * FROM Elemento
	WHERE Elemento.Nin=@Nin; 
END $$
DELIMITER ;

SET @Nin = 36;
call ArquivarElemento(@Nin);

select * from Elemento;
select * from ElementoArquivado;
drop procedure ArquivarElemento;