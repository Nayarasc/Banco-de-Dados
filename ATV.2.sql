use avaliacao_22a;

-- primeiro --

SELECT * FROM livros
WHERE disponivel = 1;

-- segundo --

SELECT * FROM livros
WHERE editora LIKE "harpercollins";

-- terceiro --

SELECT * FROM livros
WHERE ano_publicacao BETWEEN 2000 AND 2010;

-- quarto --

SELECT autor, count(titulo) FROM livros
GROUP BY autor
HAVING count(titulo) > 3;

-- quinto --

SELECT * FROM livros
WHERE titulo LIKE "%senhor%";

-- sexto --

SELECT * FROM livros
WHERE categoria IN ("fantasia", "ficção científica", "fábula");

-- sétimo --

SELECT DISTINCT idioma FROM livros;

-- oitavo --

SELECT * FROM livros
WHERE quantidade_paginas BETWEEN 200 AND 400;

-- nono --

SELECT titulo, ano_publicacao FROM livros
ORDER BY ano_publicacao;