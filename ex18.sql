SELECT COVIDData.countriesAndTerritories AS Country, (CAST(SUM(deaths) as real) / CAST(SUM(cases) as real)) AS PercentageDeathsOfCases
FROM COVIDData GROUP BY countriesAndTerritories
ORDER BY PercentageDeathsOfCases DESC LIMIT 10;
