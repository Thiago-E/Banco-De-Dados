USE Loja_T


--TRAGA O NOME DO CLIENTE, O PREÇO DO PRODUTO E A DATA DO PEDIDO

SELECT 
	C.Nome AS 'Nome_Cliente',
	P.Nome AS 'Nome_Produto',
	P.Preco
FROM Tb_Pedido PD
INNER JOIN Tb_Cliente C ON PD.Id_Cliente = C.Id_Cliente
INNER JOIN Tb_Produto P ON PD.Id_Produto = P.Id_Produto


--TRAGA DATA PRECISSA ESTAR NO FORMATO D/M/A

SELECT CONVERT(VARCHAR, Data_Horario, 103) AS Data_e_hora FROM Tb_Pedido


SELECT 
	C.Nome AS Nome_Cliente,
	P.Nome AS Nome_Produto,
	P.Preco
FROM Tb_Pedido PD
INNER JOIN Tb_Cliente C ON PD.Id_Cliente = C.Id_Cliente
INNER JOIN Tb_Produto P ON PD.Id_Produto = P.Id_Produto

--SELECIONANDO POR MÊS

SELECT 
	C.Nome,
	P.Id_Pedido,
	P.Data_Horario
FROM Tb_Cliente C
LEFT JOIN Tb_Pedido P ON C.Id_Cliente = P.Id_Cliente
WHERE MONTH(P.Data_Horario) = 09;


--TRAGA O NOME DO CLIENTE, O PREÇO DO PRODUTO E A DATA 

SELECT 
C.Nome, 
P.Nome, 
Data_Horario
FROM Tb_Pedido PD 
INNER JOIN Cliente C ON PD.Id_Cliente = C.Id_Cliente
INNER JOIN Produto P ON PD.Id_Produto = P.Id_Produto

SELECT 
	C.Nome, 
	Data_horario
FROM Cliente C
LEFT JOIN Pedido PD ON C.ID_Cliente = PD.ID_Cliente
WHERE PD.ID_Pedido IS NULL;

--Exiba todos os nomes produtos que não estõ em algum pedido--

SELECT 
	P.Nome, 
	Data_horario
FROM Produto P
LEFT JOIN Pedido PD ON P.ID_Produto = PD.Id_Produto
WHERE PD.ID_Pedido IS NULL;

SELECT
	Data_horario,
	Cliente.Nome
FROM Pedido -- A TABELA DA ESQUERDA VIRA DIREITA
RIGHT JOIN Cliente ON Pedido.ID_Cliente = Cliente.ID_Cliente --A TABELA DA DIREITA VIRA ESQUERDA


SELECT
	C.Nome,
	P.Nome,
	PD.Data_Horario
FROM Cliente C
FULL JOIN Pedido	PD ON PD.ID_Cliente = C.ID_Cliente
FULL JOIN Produto	P ON PD.ID_Produto = P.ID_Produto