PRAGMA foreign_keys = ON;
INSERT OR IGNORE INTO Date(dateRep, day, month, year) SELECT dateRep, day, month, year FROM dataset WHERE day != 'day';
INSERT OR IGNORE INTO PopData(geoId, popData2019) SELECT geoId, popData2019 FROM dataset WHERE day != 'day';
INSERT OR IGNORE INTO Countries(countriesAndTerritories, geoId, countryterritoryCode, continentExp) SELECT countriesAndTerritories, geoId, countryterritoryCode, continentExp FROM dataset WHERE day != 'day';
INSERT OR IGNORE INTO COVIDData(dateRep, countriesAndTerritories, cases, deaths) SELECT dateRep, countriesAndTerritories, cases, deaths FROM dataset WHERE day != 'day';
