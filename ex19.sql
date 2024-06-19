SELECT COVIDData.dateRep as Date, SUM(deaths) OVER(ORDER BY year ASC, month ASC, day ASC) AS CumulativeDeaths,
SUM(cases) OVER(ORDER BY year ASC, month ASC, day ASC) AS CumulativeCases FROM COVIDData INNER JOIN Date On COVIDData.dateRep = Date.dateRep
WHERE countriesAndTerritories = 'United_Kingdom' ORDER BY year ASC, month ASC, day ASC;
