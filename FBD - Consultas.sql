-- Importar um BD desde um arquivo dump:
-- Fazer o DDL de um MER especifico:
Create database bd_employee;
show tables;
show databases;
use bd_employee;
drop table estagiários;

-- Listar o nome dos itens de pelo menos uma tabela;
select * from dependent;
select * from department;
select * from employee;

-- Popular o BD criado com informação fictícias:
INSERT INTO EMPLOYEE
VALUES ('Richard', 'K', 'Marini', '653298653', '2000-12-10', '98 Oak Forest, Katy, TX', 'M', 37000, '653298653', 4);

CREATE TABLE ESTAGIÁRIOS (
    Aluno_id INT AUTO_INCREMENT PRIMARY KEY,
    Nome VARCHAR(50) NOT NULL,
    NascData DATE NOT NULL,
    Inicio_data DATE NOT NULL,
    Fim_data DATE,
    Escola_nome VARCHAR(100) NOT NULL,
    Cargo VARCHAR(50) NOT NULL
);

INSERT INTO estagiários
VALUES (12,'Ana Cecilia', '2002-04-12', '2024-02-01', NULL, 'Universidade Federal do Ceará', 'Desenvolvedora Front-end'),
       (13,'Lucas Moura', '2003-08-23', '2023-06-15', '2024-06-14', 'Instituto Federal de Educação', 'Assistente de Marketing'),
       (14, 'Danilly Maria', '2001-11-30', '2022-09-01', NULL, 'Centro Universitário Estácio', 'Analista de Dados');

select * from estagiários;

-- Quantos empregados tem o departamento de pesquisa ("research")?
SELECT Dnumber
FROM DEPARTMENT
WHERE Dname = 'Research';
-- Resposta: 4

SELECT COUNT(*) AS NumEmployees
FROM EMPLOYEE E
JOIN DEPARTMENT D ON E.Dno = D.Dnumber
WHERE D.Dname = 'Research';

-- Incluir um novo departamento denominado "datascience" com Dno =7;
INSERT INTO DEPARTMENT (Dname, Dnumber, Mgr_ssn, Mgr_start_date)
VALUES ('datascience', 7, '653298653', '1955-02-09');

-- Incluir pelo menos dois cientistas de dados no novo departamento com os atributos básicos;
INSERT INTO EMPLOYEE
VALUES ('Maria', 'C', 'Oliveira', '123987654', '1990-02-15', '123 Damas, Fortaleza CE', 'F', 60000, NULL, 7),
       ('Carlos', 'B', 'Santos', '987655521', '1985-06-20', '456 Aldeota, Fortaleza CE', 'M', 65000, NULL, 7);

SELECT COUNT(*) AS NumEmployees
FROM EMPLOYEE E
JOIN DEPARTMENT D ON E.Dno = D.Dnumber
WHERE D.Dname = 'datascience';

-- Aumentar o salário de todos os empregados em 13.5% do valor atual;
UPDATE EMPLOYEE
SET Salary = Salary * 1.135;

SELECT Fname, Salary
FROM EMPLOYEE;

-- Mudar a endereço de residência ("Address") do departamento 4 ("Administration") para Itapajé, CE;
UPDATE EMPLOYEE
SET Address = 'Itapajé, CE'
WHERE Dno = 4;

SELECT Fname, Address
FROM EMPLOYEE
WHERE Dno = 4;




