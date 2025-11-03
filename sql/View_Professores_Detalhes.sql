CREATE VIEW View_Professores_Detalhes AS
SELECT
    PR.siape,
    P.nome,
    P.cpf,
    PR.departamento,
    P.email,
    P.telefone
FROM
    Professor PR
JOIN
    Pessoa P ON PR.cpf_pessoa = P.cpf;