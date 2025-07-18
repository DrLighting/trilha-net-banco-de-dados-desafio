select Nome,Ano 
from Filmes


select * from Filmes
order by Ano


select Nome, Ano, Duracao from Filmes
where Nome = 'De volta para o Futuro'

select Nome, Ano, Duracao from Filmes
where Ano = 1997

select Nome, Ano, Duracao from Filmes
where Ano > 2000

select Nome, Ano, Duracao from Filmes
where Duracao > 100 and Duracao < 150
order by Duracao


select Ano, count(Ano) Quantidade from Filmes
group by Ano
order by Quantidade desc


select PrimeiroNome, UltimoNome from Atores
where Genero = 'M'


select PrimeiroNome, UltimoNome from Atores
where Genero = 'F'
order by PrimeiroNome


select Filmes.Nome,
		Generos.Genero
from Filmes
inner join FilmesGenero on Filmes.Id = FilmesGenero.IdFilme
inner join Generos on Generos.Id = FilmesGenero.IdGenero


select Filmes.Nome,
		Generos.Genero
from Filmes
inner join FilmesGenero on Filmes.Id = FilmesGenero.IdFilme
inner join Generos on Generos.Id = FilmesGenero.IdGenero
where Generos.Genero = 'Mistério'

select F.nome,
		A.PrimeiroNome,
		A.UltimoNome,
		EF.Papel
from Filmes F
inner join ElencoFilme EF on EF.IdFilme = F.Id
inner join Atores A on A.Id = EF.IdAtor

