use agrup424;

-- View para Chefes

CREATE VIEW membroschefes AS

SELECT * FROM Elemento
INNER JOIN Funcao 
	ON Funcao.Designacao = Elemento.Funcao_Designacao
	WHERE (Funcao.Designacao = 'Chefe de Agrupamento' || Funcao.Designacao = 'Chefe Tesoureiro' || Funcao.Designacao = 'Chefe Secretário' || Funcao.Designacao = 'Chefe dos Lobitos' || Funcao.Designacao = 'Chefe dos Exploradores' || Funcao.Designacao = 'Chefe dos Pioneiros' || Funcao.Designacao = 'Chefe dos Caminheiros');

-- drop view membroschefes;

SELECT Nome,Idade,Funcao_Designacao AS 'Funçoes' FROM membroschefes