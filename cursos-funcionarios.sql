CREATE TABLE funcionarios (
  id_funcionario INTEGER PRIMARY KEY,
  nome_funcionario VARCHAR(100),
  cargo VARCHAR(50)
);

CREATE TABLE cursos (
  id_curso INTEGER PRIMARY KEY,
  nome_curso VARCHAR(100),
  carga_horaria INT
);

CREATE TABLE inscricoes (
  id_inscricao INTEGER PRIMARY KEY,
  id_funcionario INTEGER,
  id_curso INTEGER,
  data_inscricao DATE,

FOREIGN KEY (id_funcionario) REFERENCES funcionarios(id_funcionario),
FOREIGN KEY (id_curso) REFERENCES cursos(id_curso)
);


INSERT INTO funcionarios (id_funcionario,nome_funcionario,cargo) 
VALUES 
(1, 'Maria Cláudia', 'Analista de Sistemas'),
(2, 'João Pedro Silva', 'Desenvolvedor Backend'),
(3, 'Ana Beatriz Souza', 'Designer UX/UI'),
(4, 'Carlos Eduardo Costa', 'Gerente de Projetos'),
(5, 'Fernanda Oliveira', 'Engenheira de Software');

UPDATE funcionarios SET cargo = 'Desenvolvedor Mobile' WHERE id_funcionario = 2;

INSERT INTO cursos (id_curso,nome_curso,carga_horaria) 
VALUES 
(1, 'Lógica de Programação', 40),
(2, 'Modelagem de Banco de Dados', 60),
(3, 'Desenvolvimento Web Front-End', 80),
(4, 'Gestão de Projetos de TI', 45),
(5, 'Estruturas de Dados em C', 50);

INSERT INTO inscricoes (id_inscricao,id_funcionario,id_curso,data_inscricao)
VALUES 
(1, 1, 1, '2026-03-10'),
(2, 2, 3, '2026-03-12'),
(3, 3, 2, '2026-03-15'),
(4, 4, 4, '2026-03-18'),
(5, 5, 5, '2026-03-20');

SELECT 
inscricoes.id_inscricao,
funcionarios.nome_funcionario,
funcionarios.cargo,
cursos.nome_curso,
cursos.carga_horaria,
inscricoes.data_inscricao
FROM inscricoes
INNER JOIN funcionarios 
ON inscricoes.id_funcionario = funcionarios.id_funcionario
INNER JOIN cursos 
ON inscricoes.id_curso = cursos.id_curso
ORDER BY funcionarios.nome_funcionario ASC;


