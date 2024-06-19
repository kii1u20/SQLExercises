SELECT COVIDData.countriesAndTerritories as Country, (CAST(SUM(cases) as real) / CAST(PopData.popData2019 as real)) * 100 AS PercentageCases, CAST(SUM(deaths) as real) / CAST(PopData.popData2019 as real) * 100 AS PercentageDeaths
FROM COVIDData INNER JOIN Countries ON COVIDData.countriesAndTerritories = Countries.countriesAndTerritories INNER JOIN PopData ON Countries.geoId = PopData.geoId
GROUP BY COVIDData.countriesAndTerritories;
