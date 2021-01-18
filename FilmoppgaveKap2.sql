-- Oppgaver

-- a) All informasjon om filmer produsert i 1988
Select * 
From Film
Where År = 1988

-- b) Tittel på amerikanske filmer produsert på 1980-tallet.
Select Tittel 
From Film
Where Land = 'USA' and År < 1990 and År >= 1980

-- c) Komedier med aldergrense under 10 år og spilletid under 130
Select Sjanger
From Film
Where Alder år < 10 and Tid < 130

-- d) Tittel på alle action og westernfilmer
Select Tittel
From Film
Where Sjanger = 'Western' or Sjanger = 'Action'

-- e) Alle produksjonsland, sortert og uten gjentakelser
Select Distinct Land
From Film
Order by Land

-- f) Korteste og lengste spilletid innen hver sjanger
Select Min(Tid), Max(Tid)
From Film
Group by Sjanger

-- g) Antall filmer som ikke er til salgs.
Select Count(*) AS Antall
From Film
Where Pris is null

-- h) Antall filmer under 100kr
Select Count(Pris) AS AntallFilmer
From Film
Where Pris < 100

-- i) Filmer med titel som slutter på 'now'
Select Tittel
From Film
Where Tittel LIKE '%now'

-- j) Gjennomsnittspris for sjangre med flere enn 2 filmer
Select AVG(Pris) AS GjennomsnittsPris
From Film
Group by Sjanger
Having Count(Pris) > 2

-- k) Differansen mellom dyreste og billigste film innen hver sjanger
Select Max(Pris) - Min(Pris) AS Differans
From Film
Group by Sjanger

-- l) Totalt antall filmer og antall filmer til salgs, fordelt på produksjonsland
Select Count(*), Count(Pris)
From Film
Group by Land

-- m) Antall år siden utgivelse for filmer eldre enn 50 år. 
SELECT Tittel, (YEAR(CURDATE()) - År) AS ÅrsForskjell
FROM Film
WHERE YEAR(CURDATE()) - År > 50