CREATE VIEW View_Fornecedores_Contatos AS
SELECT
    cnpj,
    razaoSocial,
    contato
FROM
    Fornecedor;