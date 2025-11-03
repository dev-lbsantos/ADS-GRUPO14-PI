CREATE VIEW View_Alunos_Detalhes AS
SELECT
    A.matricula,
    P.nome,
    P.cpf,
    A.curso,
    P.dataNascimento,
    P.email,
    P.telefone,
    P.endereco
FROM
    Aluno A
JOIN
    Pessoa P ON A.cpf_pessoa = P.cpf;