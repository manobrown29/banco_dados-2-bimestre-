use avaliacao_22c;

/*Inserir um Novo Livro*/

insert into livros (titulo, autor, ano_publicacao, disponibilidade,categoria,isbn, paginas, idioma)
values('As cronicas de narnia', 'C.S. Lewis', 1950, TRUE, 'Fantasia', '978-0064471190', 'HarperCollins', 768, 'Ingles');
 
 /*Inserir Múltiplos Livros*/
 
 insert into livros (titulo, autor, ano_publicacao, disponibilidade,categoria,isbn, paginas, idioma)
 values
	('Cem Anos de Solidão', 'Gabriel Garcia Marquez', 1967, TRUE, 'Ficção', '978-0241968581', 'Penguin Books', 422, 'Espanhol'),
    ('Harry Potter e a Pedra Filosofal', 'J.K. Rowling', 1997, TRUE, 'Fantasia', '978-0439708180', 'Bloomsbury', 309, 'Inglês'),
    ('O Senhor dos Anéis: A Sociedade do Anel', 'J.R.R. Tolkien', 1954, TRUE, 'Fantasia', '978-0618640157', 'HarperCollins', 423, 'Inglês');

/*Inserir Livro com Categoria Específica*/

insert into livros (titulo, autor, ano_publicacao, disponibilidade,categoria,isbn, paginas, idioma)
value ('uma breve historia do tempo', 'stephen hawking', 1988, true, 'historia', '978-0553380163', 'bantem books',212, 'ingles');

/*Atualizar Disponibilidade*/

update livros
set disponibilidade = false
where ano_publicacao < 2000;

/*Atualizar Editora*/

update livros
set editora = 'plume books'
where titulo = '1984';

/*Atualizar Idioma*/

update livros
set idioma = 'ingles'
where editora = 'peguin books';

/*Atualizar Título*/

update livros
set titulo = 'herry potter e a pedra filosofal (edicao especial)'
where isbn = '978-0439709190';

/*Deletar por Categoria*/

delete from livros
where categoria = 'Terror';

/*Deletar por Idioma e Ano*/

delete from livros
where idioma = 'frances' and ano_publicacao < 1970;

/*Deletar Livro Específico*/

delete from livros
where titulo = 'As cronicas de narnia';

/*Deletar por Editora*/

delete from livros
where editora = 'penguin books';

/*Selecionar com WHERE*/

select *
from livros
where paginas > 500;

/*Selecionar com GROUP BY*/

select categoria, count(*) as total_livros
from livros
group by categoria;

/*Selecionar com LIMIT*/

select *
from livros
order by id
limit 5;

/*Selecionar com SUM e COUNT*/

select sum(paginas) as total_paginas, count(*) as total_livros, avg(paginas) as media_paginas
from livros
where categoria = 'drama';

/*Selecionar com AVG*/

select avg(ano_publicacao) as media_ano
from livros
where disponibilidade = true;

/*Selecionar com MAX e MIN*/

select titulo, ano_publicacao
from livros
order by ano_publicacao desc
limit 1;

select titulo, ano_publicacao
from livros
order by ano_publicacao asc
limit 1;

/*Selecionar com ORDER BY*/

select * 
from livros
order by ano_publicacao desc;

/*Selecionar com UNION*/

select titulo
from livros
where idioma = 'ingles'

union

select titulo
from livros
where idioma = 'portugues';

/*Selecionar Livros de um Autor Específico*/

select * 
from livros
where autor = 'george orwell';
