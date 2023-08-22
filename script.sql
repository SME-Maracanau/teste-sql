
CREATE TABLE alunos (
	id INTEGER,
	nome CHARACTER VARYING (255) NOT NULL,
	PRIMARY KEY (id)
);

CREATE TABLE disciplinas (
	id INTEGER,
	nome CHARACTER VARYING (20) NOT NULL,
	PRIMARY KEY (id)
);

CREATE TABLE notas (
	id SERIAL,
	aluno_id INTEGER NOT NULL,
	disciplina_id INTEGER NOT NULL,
	nota FLOAT NOT NULL,
	FOREIGN KEY (aluno_id) REFERENCES alunos (id),
	FOREIGN KEY (disciplina_id) REFERENCES disciplinas (id)
);

-- INSERE OS DADOS DOS ALUNOS
INSERT INTO alunos (id, nome)
	VALUES (1 , 'JOAO'), (2 , 'MARIA'), (3 , 'ALBERTO');
	
-- INSERE OS DADOS DAS DISCIPLINAS
INSERT INTO disciplinas (id, nome)
	VALUES (1 , 'PORTUGUES'), (2 , 'MATEMATICA'), (3 , 'CIENCIAS');
	
-- INSERE AS NOTAS
INSERT INTO notas (aluno_id, disciplina_id, nota)
	VALUES (1 , 1, 6), (2 , 1, 9), (3 , 1, 10);
	
INSERT INTO notas (aluno_id, disciplina_id, nota)
	VALUES (1 , 2, 7), (2 , 2, 5), (3 , 2, 9);

INSERT INTO notas (aluno_id, disciplina_id, nota)
	VALUES (1 , 2, 6), (2 , 2, 9), (3 , 2, 3);
