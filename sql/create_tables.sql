CREATE TABLE Pessoa (
    cpf VARCHAR(14) PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    dataNascimento DATE,
    endereco VARCHAR(200),
    telefone VARCHAR(15),
    email VARCHAR(100) UNIQUE NOT NULL
);

CREATE TABLE Aluno (
    cpf_pessoa VARCHAR(14) PRIMARY KEY,
    matricula VARCHAR(20) UNIQUE NOT NULL,
    curso VARCHAR(100),
    FOREIGN KEY (cpf_pessoa) REFERENCES Pessoa(cpf)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);

CREATE TABLE Professor (
    cpf_pessoa VARCHAR(14) PRIMARY KEY,
    siape VARCHAR(20) UNIQUE NOT NULL,
    departamento VARCHAR(100),
    FOREIGN KEY (cpf_pessoa) REFERENCES Pessoa(cpf)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);

CREATE TABLE Fornecedor (
    cnpj VARCHAR(18) PRIMARY KEY,
    razaoSocial VARCHAR(150) NOT NULL,
    contato VARCHAR(100)
);

CREATE TABLE Curso (
    codigo VARCHAR(10) PRIMARY KEY,
    nome VARCHAR(100) UNIQUE NOT NULL,
    duracaoAnos INT
);