CREATE DATABASE duoA
CREATE TABLE Fornecedor(
    CodFornecedor SMALLINT PRIMARY KEY IDENTITY (200,1),
    NomeFornecedor VARCHAR (50) NOT NULL,
    InicioFornecimento DATE NOT NULL,
);

CREATE TABLE Produto(
    CodProduto SMALLINT PRIMARY KEY IDENTITY(100,1),
    NomeProduto VARCHAR (50) NOT NULL,
    CodFornecedor SMALLINT NOT NULL,
    QtProduto INT DEFAULT 01,
    PrecoCusto MONEY NOT NULL CHECK(PrecoCusto > 0),
    Lucro DECIMAL (5,1) NOT NULL CHECK(Lucro > 0),
    VLVenda AS CAST((PrecoCusto + (PrecoCusto*(Lucro/100)))AS MONEY)PERSISTED,--inStrui a armazenar o resultado do calculo--
CONSTRAINT fk_fornecer FOREIGN KEY(CodFornecedor)
 REFERENCES Fornecedor(CodFornecedor) ON DELETE CASCADE
);


CREATE TABLE Cliente(
    CodCliente SMALLINT PRIMARY KEY IDENTITY(100, 1),
    Nome VARCHAR(60) NOT NULL,
    Cpf VARCHAR(11) NOT NULL UNIQUE,
    DataNasc DATE NOT NULL,
    Endereço VARCHAR(80) NULL,
);
 
CREATE TABLE CompraCL(
	CodCompra SMALLINT PRIMARY KEY IDENTITY (1000,1),
	CodProduto SMALLINT NOT NULL,
	CodCliente SMALLINT NOT NULL,
	DataCompra DATETIME NOT NULL,
    VLVenda MONEY NOT NULL,
    QtCompra INT NOT NULL DEFAULT 01,
    VLComprado AS (VLVenda * QtCompra)PERSISTED,
CONSTRAINT fk_produto FOREIGN KEY (CodProduto)
 REFERENCES Produto(CodProduto) ON DELETE CASCADE,
CONSTRAINT fk_Cliente FOREIGN KEY (CodCliente)
 REFERENCES Cliente(CodCliente) ON DELETE CASCADE,
 );







