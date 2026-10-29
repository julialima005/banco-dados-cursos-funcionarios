# Banco de Dados de Cursos e Funcionários

Projeto acadêmico em SQL desenvolvido durante a graduação em Engenharia de Software na UDF.

## Sobre o projeto

O banco organiza funcionários, cursos e inscrições em capacitações. Permite relacionar cada inscrição a um funcionário e a um curso, evitando repetir suas informações em uma única tabela.

Todos os dados utilizados são fictícios.

## Tecnologias utilizadas

- SQL.
- Ambiente de desenvolvimento: OneCompiler.

## Estrutura do banco

| Tabela | Finalidade |
|---|---|
| funcionarios | Armazena identificador, nome e cargo dos funcionários. |
| cursos | Armazena identificador, nome e carga horária dos cursos. |
| inscricoes | Relaciona funcionários e cursos e registra a data da inscrição. |

Cada funcionário pode ter várias inscrições, e cada curso pode receber várias inscrições. A tabela `inscricoes` contém chaves estrangeiras para as outras duas tabelas.

## Operações demonstradas

- CREATE TABLE: criação das três tabelas.
- PRIMARY KEY: identificação dos registros.
- FOREIGN KEY: relacionamento entre as tabelas.
- INSERT INTO: inserção de cinco registros em cada tabela.
- UPDATE: alteração do cargo do funcionário de identificador 2.
- INNER JOIN: consulta que reúne as três tabelas.
- ORDER BY: ordenação do resultado pelo nome do funcionário.

## Como executar

1. Abra o arquivo `cursos-funcionarios.sql` deste repositório.
2. Copie o conteúdo completo.
3. Abra um editor SQL no OneCompiler, utilizando o mesmo banco de dados selecionado no exercício original.
4. Cole o código em um ambiente novo, sem tabelas com esses mesmos nomes.
5. Execute o script completo.

O script cria as tabelas e insere os dados. Para executar novamente, utilize um ambiente vazio, pois ele não remove tabelas existentes.

Não é necessário instalar bibliotecas ou dependências para usar o editor on-line.

### Como clonar o repositório

```bash
git clone https://github.com/julialima005/banco-dados-cursos-funcionarios.git
cd banco-dados-cursos-funcionarios
```

## Resultado esperado

A consulta final retorna cinco inscrições, mostrando:

- Identificador da inscrição.
- Nome e cargo do funcionário.
- Nome e carga horária do curso.
- Data da inscrição.

Os nomes aparecem nesta ordem: Ana Beatriz Souza, Carlos Eduardo Costa, Fernanda Oliveira, João Pedro Silva e Maria Cláudia.

O cargo de João Pedro Silva aparece como `Desenvolvedor Mobile`, após a atualização.

## Aprendizados

Prática de modelagem relacional, chaves primárias e estrangeiras, inserção e atualização de dados e consultas com INNER JOIN.

## Licença

Projeto disponível sob a licença MIT, no arquivo LICENSE.

## Autora

Júlia Lima — estudante de Engenharia de Software na UDF.
