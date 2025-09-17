# Atividade Prática – MySQL  
## Banco de Dados Relacional  

Este repositório contém a execução de três atividades práticas utilizando **MySQL**, abordando conceitos de criação de bancos de dados, tabelas, inserção de dados, consultas (`SELECT`) e atualização de registros (`UPDATE`).  

---

## Atividade 01 – Banco de Dados de RH  

**Objetivo:** Criar um banco de dados para um serviço de RH de uma empresa, armazenando informações sobre os colaboradores.  

**Requisitos:**  
- Criar uma tabela `tb_colaboradores` com 5 atributos relevantes (ex.: id, nome, cargo, departamento, salário).  
- Inserir no mínimo 5 registros.  
- Consultar colaboradores com salário maior que 2000.  
- Consultar colaboradores com salário menor que 2000.  
- Atualizar um registro da tabela.  

**Arquivo SQL:** [`db_rh_empresa.sql`](./db_rh_empresa.sql)

**Exemplo de Tabela:**  
| id | nome          | cargo            | departamento   | salario  |  
|----|---------------|------------------|----------------|----------|  
| 1  | Ana Silva     | Analista de RH   | RH             | 4500.00  |  
| 2  | Bruna Felix   | Dev Backend      | TI             | 10000.50 | 
| 3  | Camila Maria  | Coordenadora     | Marketing      | 3950.00  |  
| 4  | Diego Ramos   | Auxiliar         | Administrativo | 1700.00  |
| 5  | Elisa Marques | Designer Gráfico | Designer       |  2100.00 | 

---

## Atividade 02 – Banco de Dados de E-commerce  

**Objetivo:** Criar um banco de dados para um e-commerce, armazenando informações sobre produtos.  

**Requisitos:**  
- Criar uma tabela `tb_produtos` com 5 atributos relevantes (ex.: id, tipo, nome_produto, categoria, preco).  
- Inserir no mínimo 8 registros.  
- Consultar produtos com valor maior que 500.  
- Consultar produtos com valor menor que 500.  
- Atualizar um registro da tabela.  

**Arquivo SQL:** [`db_e_commerce.sql`](./db_e_commerce.sql)   

**Exemplo de Tabela:**  
| id | tipo    |     nome_produto                 | categoria       | preco   |  
|----|---------|----------------------------------|-----------------|---------|  
| 1  | Físico  | Headset Gamer HyperX             | Acessório Gamer | 550.00  |  
| 2  | Digital | E-book: Introdução à Programação | Cursos          | 29.90   |  

---

## Atividade 03 – Banco de Dados de Escola  

**Objetivo:** Criar um banco de dados para uma escola, armazenando informações sobre os alunos.  

**Requisitos:**  
- Criar uma tabela `tb_alunos` com 5 atributos relevantes (ex.: id, nome, idade, turma, nota).  
- Inserir no mínimo 8 registros.  
- Consultar estudantes com nota maior que 7.0.  
- Consultar estudantes com nota menor que 7.0.  
- Atualizar um registro da tabela.  

**Arquivo SQL:** [`db_escola.sql`](./db_escola.sql)  


**Exemplo de Tabela:**  
| id | nome        | idade  | turma | nota  |  
|----|-------------|--------|-------|-------|  
| 1  | Ana Silva   | 10     | T1    | 8.5   |  
| 2  | Bruno Costa | 14     | T2    | 6.5   |  
