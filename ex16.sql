SELECT Countries.continentExp AS Continent, COVIDData.dateRep as Date, SUM(COVIDData.cases) as ConfirmedCases, SUM(COVIDData.deaths) as ConfirmedDeaths
FROM COVIDData INNER JOIN Date ON COVIDData.dateRep = Date.dateRep INNER JOIN Countries ON COVIDData.countriesAndTerritories = Countries.countriesAndTerritories
GROUP BY COVIDData.dateRep, Countries.continentExp
ORDER BY year ASC, month ASC, day ASC;
