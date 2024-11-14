CREATE TABLE estudante (
	matricula SERIAL PRIMARY KEY,
	nome_completo VARCHAR(100) NOT NULL,
	data_nascimento DATE NOT NULL,
	email VARCHAR(100) UNIQUE NOT NULL,
	telefone VARCHAR(15)

);


CREATE TABLE livros (
	codigo SERIAL PRIMARY KEY,
	titulo VARCHAR(150) NOT NULL,
	autor VARCHAR(100) NOT NULL,
	editora VARCHAR(100) NOT NULL,
	ano INT,
	status VARCHAR(20) default 'disponivel' NOT NULL

);

CREATE TABLE emprestimos(
 	codigo SERIAL PRIMARY KEY,
	codigo_livro INT NOT NULL REFERENCES livros(codigo),
	matricula_estudante INT NOT NULL REFERENCES estudante(matricula),
	data_retirada DATE NOT NULL,
	devolucao BOOLEAN DEFAULT FALSE

);





