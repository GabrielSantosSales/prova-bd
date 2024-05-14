select *
from livros
;

insert into livros (titulo, autor, ano_publicacao, disponivel, categoria, isbn, editora, quantidade_paginas, idioma) 
values ("As Crônicas de Nárnia", "C.S. Lewis", 1950,true, "Fantasia", "978-0064471190", "HarperCollins", 768, "Francês");

update livros
set disponivel= false
where ano_publicacao<1900;

update livros
set editora= "Plume Books"
where titulo = "1984";

delete from livros where idioma = "Francês" and ano_publicacao<2000;

select *
from livros
where quantidade_paginas>600;

select categoria, count(categoria)
from livros
group by categoria;

select *
from livros
limit 5;

select avg(quantidade_paginas)
from livros
;
