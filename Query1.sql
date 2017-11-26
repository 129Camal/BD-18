use agrup424;

-- Query 1: Lista com Nin, Nome , Função e Secção a que cada elemento pertence; 
SELECT Nin,Nome,funcao_designacao AS 'Função',seccao_designacao AS 'Seccção'  FROM Elemento;