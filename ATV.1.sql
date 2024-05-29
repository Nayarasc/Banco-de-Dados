use avaliacao_22a;

-- primeiro --
SELECT * FROM Livros;

INSERT INTO Livros (titulo, autor, ano_publicacao, disponivel, categoria, isbn, editora, quantidade_paginas, idioma)
VALUES ("As Crônicas de Nárnia", "C.S Lewis", 1950, TRUE, "Fantasia", "978-0064471190", "HarperCollins", 768, "Inglês");

-- segundo --
SELECT * FROM Livros;

INSERT INTO Livros (titulo, autor, ano_publicacao, disponivel, categoria, isbn, editora, quantidade_paginas, idioma)
VALUES ("Cem Anos de Solidão", "Gabriel Garcia Marquez", 1967, TRUE, "Ficção", '978-0241968581', "Penguin Books", 422, "Espanhol"), 
("Harry Potter e a Pedra Filosofal", "J.K. Rowling", 1997, TRUE, "Fantasia", '978-0439708180', "Bloomsbury", 309, "Inglês"), 
("O Senhor dos Anéis: A Sociedade do Anel", "J.R.R. Tolkien", 1954, TRUE, "Fantasia", '978-0618640157', "HarperCollins", 423, "Inglês");

-- terceiro --
SELECT * FROM Livros;

INSERT INTO Livros (titulo, autor, ano_publicacao, disponivel, categoria, isbn, editora, quantidade_paginas, idioma)
VALUES ("Como o racismo criou o Brasil", "Jessé Souza", 2021, TRUE, "História", "978-6557330104", "Estação Brasil", 304, "Português");

-- quarto --
SELECT * FROM Livros
WHERE ano_publicacao < 2000;

UPDATE Livros
SET disponivel = false
WHERE ano_publicacao < 2000;

-- quinto --
SELECT * FROM Livros
WHERE titulo = "1984";

UPDATE Livros
SET editora = "Plume Books" 
WHERE titulo = "1984";

-- sexto --
SELECT * FROM Livros
WHERE editora = "Penguin Books";

UPDATE Livros
SET idioma = "Inglês"
WHERE editora = "Penguin Books";

-- sétimo --
SELECT * FROM Livros
WHERE isbn = "978-0439708180";

UPDATE Livros
SET titulo = "Harry Potter e a Pedra Filosofal (Edição Especial)"
WHERE isbn = "978-0439708180";

-- oitavo --
SELECT * FROM Livros
WHERE categoria = "Terror";

DELETE FROM Livros
WHERE categoria = "Terror";

-- nono --
SELECT * FROM Livros
WHERE idioma = "Francês" AND ano_publicacao < 1970;

DELETE FROM Livros
WHERE idioma = "Francês" AND ano_publicacao < 1970;

-- décimo --
SELECT * FROM Livros
WHERE titulo = "As Crônicas de Nárnia";

DELETE FROM Livros
WHERE titulo = "As Crônicas de Nárnia";

-- décimo primeiro --
SELECT * FROM Livros
WHERE editora = "Penguin Books";

DELETE FROM Livros
WHERE editora = "Penguin Books";


-- décimo segundo --
SELECT * FROM Livros
WHERE quantidade_paginas > 500;

-- décimo terceiro --
SELECT count(categoria) FROM Livros
GROUP BY categoria;

-- décimo quarto -- 
SELECT * FROM Livros
LIMIT 0,5;

-- décimo quinto --
SELECT count(quantidade_paginas) AND avg(quantidade_paginas) FROM Livros
WHERE categoria = "Drama";

-- décimo sexto --
SELECT avg(ano_publicacao) FROM Livros;

-- décimo sétimo --
SELECT max(ano_publicacao), min(ano_publicacao)
FROM Livros;

-- décimo oitavo --
SELECT * FROM Livros
ORDER BY ano_publicacao desc;

-- décimo nono --
SELECT titulo FROM Livros WHERE idioma = "Inglês"
UNION
SELECT titulo FROM Livros WHERE idioma = "Português";

-- vigésimo --
SELECT * FROM Livros
WHERE autor = "George Orwell";