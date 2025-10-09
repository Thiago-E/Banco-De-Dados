USE Loja_T

INSERT INTO Cliente(Nome)
VALUES
('Ana'),
('Bruno'),
('Carla'),
('Diego');

SELECT * FROM Cliente;
truncate table Cliente;

INSERT INTO Produto(Nome, Preco)
VALUES
('Teclado',150.00),
('Mouse',90.00),
('Monitor',400.00),
('Impressora',600.00),
('Headset', 300.00);

SELECT * FROM Produto;

--limpa os registro
TRUNCATE TABLE Cliente;

INSERT INTO Pedido(ID_Produto, ID_Cliente, Data_Horario)
VALUES
(1,1,'2025-10-07 11:33:00'), 
(2,2,'2025-10-06 22:00:00'), 
(3,2,'2025-10-06 11:22:00'),
(4,3,'2025-05-26 07:30:00');

SELECT * FROM Pedido;
SELECT * FROM Cliente;
SELECT * FROM Produto;
