
-- User admin tem autorizaçao para todos os privilegios ate mesmo 
-- para atribuir privilegios podendo-se logar de qualquer lado. 
GRANT ALL 
ON `agrup424`.* TO admin IDENTIFIED BY 'admin'
WITH GRANT OPTION;


-- User adchefe tem autorizaçao para alterar dados nas tabelas elemento, atividade e equipa 
GRANT SELECT,INSERT,UPDATE,DELETE ON `agrup424`.`Elemento` TO adchefe@localhost IDENTIFIED BY 'chefe';
GRANT SELECT,INSERT,UPDATE,DELETE ON `agrup424`.`Atividade` TO adchefe@localhost;
GRANT SELECT,INSERT,UPDATE,DELETE ON `agrup424`.`Equipa` TO adchefe@localhost;

-- User adelemeto . 
GRANT USAGE
ON `agrup424`.`Elemento` TO adelemento@localhost IDENTIFIED BY 'elem';

SELECT user,host from mysql.user;
DROP USER chefeSecretario@localhost;
SHOW GRANTS FOR	adelemento@localhost;