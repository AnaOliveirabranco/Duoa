UPDATE Produto --Atualiza o valor do lucro apenas de um unico campo da coluna 
SET Lucro = 60.0
WHERE CodProduto = 100;


UPDATE Produto  --Atualiza o valor do lucro de todos os campos da coluna
SET Lucro = 84.7;


UPDATE CompraCL
SET  CodCliente = 103, QtCompra = 3
WHERE CodCompra = 1006;


UPDATE Cliente
SET  Nome = 'Annie'
WHERE CodCliente = 105;

UPDATE Cliente
SET  Nome = 'Filomena'
WHERE CodCliente = 108;