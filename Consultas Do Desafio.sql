1 - Buscar o nome e ano dos filmes:
SELECT Nome, Ano FROM Filmes

--esse exercicio 2 ta pedindo so o nome e o ano mas na imagem para ilustrar esta a duração tambem, entao vou colocar ela
2 - Buscar o nome e ano dos filmes, ordenados por ordem crescente pelo ano:
SELECT Nome, Ano, Duracao FROM Filmes ORDER BY Ano ASC

3 - Buscar pelo filme de volta para o futuro, trazendo o nome, ano e a duração
SELECT Nome, Ano, Duracao FROM Filmes WHERE Nome = 'de volta para o futuro'

4 - Buscar os filmes lançados em 1997
SELECT Nome, Ano, Duracao FROM Filmes WHERE Ano = 1997

5 - Buscar os filmes lançados APÓS o ano 2000
SELECT Nome, Ano, Duracao FROM Filmes WHERE Ano > 2000

6 - Buscar os filmes com a duracao maior que 100 e menor que 150, ordenando pela duracao em ordem crescente
SELECT Nome, Ano, Duracao FROM Filmes WHERE Duracao > 100 AND Duracao <150 ORDER BY Duracao ASC;


--na descrição fala ordenar pela duração mas na imagem guia de resultado ela nem aparece e la esta agrupada por quantidade entao vou mandar de acordo com a imagem
7 - Buscar a quantidade de filmes lançadas no ano, agrupando por ano, ordenando pela duracao em ordem decrescente
SELECT Ano, COUNT(*) AS Quantidade FROM Filmes GROUP BY Ano ORDER BY Quantidade DESC; 

8 - Buscar os Atores do gênero masculino, retornando o PrimeiroNome, UltimoNome
--seguindo a descrição
SELECT PrimeiroNome, UltimoNome FROM Atores WHERE Genero = 'M'
--seguindo a imagem
SELECT * FROM Atores WHERE Genero = 'M'



9 - Buscar os Atores do gênero feminino, retornando o PrimeiroNome, UltimoNome, e ordenando pelo PrimeiroNome
--seguindo a descrição
SELECT PrimeiroNome, UltimoNome FROM Atores WHERE Genero = 'F' ORDER BY PrimeiroNome
--seguindo a imagem
SELECT * FROM Atores WHERE Genero = 'F' ORDER BY PrimeiroNome

10 - Buscar o nome do filme e o gênero
SELECT f.Nome, g.Genero  FROM Filmes f JOIN FilmesGenero fg ON f.Id = fg.IdFilme JOIN Generos g ON fg.IdGenero = g.Id

11 - Buscar o nome do filme e o gênero do tipo "Mistério"
SELECT f.Nome, g.Genero  FROM Filmes f JOIN FilmesGenero fg ON f.Id = fg.IdFilme JOIN Generos g ON fg.IdGenero = g.Id WHERE g.Genero = 'Mistério'

12 - Buscar o nome do filme e os atores, trazendo o PrimeiroNome, UltimoNome e seu Papel
SELECT f.Nome, a.PrimeiroNome FROM Filmes f JOIN ElencoFilme ef ON f.Id = ef.IdFilme JOIN Atores a ON ef.IdAtor = a.Id ;