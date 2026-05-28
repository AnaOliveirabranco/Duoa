INSERT INTO Fornecedor( NomeFornecedor,InicioFornecimento)
VALUES('Silvia Grog','20260112'),
	('Oliveiraby','20260213'),
	('Brabao hall','20260310');
	
INSERT INTO Produto ( NomeProduto, CodFornecedor, QtProduto, PrecoCusto, Lucro)
VALUES ('Bolo no Pote Maracujá',201, 6, 8.50, 60),
	('Bolo no Pote Pudim',201, 6, 8.50, 60),
	('Bolo no Pote torta de Limão',201, 6, 8.50, 60),
	('Bolo no Pote Prestigio',201, 6, 8.50, 60),
	('Bolo no Pote Cacau 50%',201, 6, 8.50, 60);

INSERT INTO Cliente(Nome,Cpf,DataNasc,Endereço)
VALUES ('Alana Oliveira', 98765432191, '20050225','Rua abc de junior 2'),
	('Regiana  Vilva', 90065432191, '20060201','Rua Castro 120'),
	('Alana Oliveira', 98765432129, '20021225','Rua Abreu Junior 2019'),
	('Barbara antos', 98765432151, '20000225','Rua Cardoso 22'),
	('Eloiza Castro', 90065432181, '20010201','Rua Alarcar 100'),
	('Alana Oliveira', 98765432139, '20031225','Rua Junior Res 209');



INSERT INTO CompraCL (CodProduto, CodCliente, DataCompra,VLVenda, QtCompra)
VALUES (  103 ,103,'20260501',13.60, 1),
	( 103 ,104,'20260502',13.60, 3),
	( 104 ,105,'20260505',13.60, 2),
	( 105 ,103,'20260504',13.60, 4),
	( 103 ,106,'20260524',13.60, 1),
	( 103 ,107,'20260520',13.60, 1),
	( 104 ,107,'20260521',13.60, 1),
	( 105 ,108,'20260522',13.60, 1);
