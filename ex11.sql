PRAGMA foreign_keys = ON;

CREATE TABLE COVIDData(
dateRep TEXT NOT NULL,
cases INTEGER,
deaths INTEGER,
countriesAndTerritories TEXT NOT NULL,
PRIMARY KEY (dateRep, countriesAndTerritories),
FOREIGN KEY (dateRep) REFERENCES Date(dateRep) ON UPDATE CASCADE ON DELETE RESTRICT,
FOREIGN KEY (countriesAndTerritories) REFERENCES Countries(countriesAndTerritories) ON UPDATE CASCADE ON DELETE RESTRICT
);

CREATE TABLE Date(
dateRep TEXT NOT NULL,
day INTEGER NOT NULL,
month INTEGER NOT NULL,
year INTEGER NOT NULL,
PRIMARY KEY (dateRep)
);

CREATE TABLE Countries(
countriesAndTerritories TEXT NOT NULL,
geoId TEXT NOT NULL,
countryterritoryCode TEXT,
continentExp TEXT NOT NULL,
PRIMARY KEY (countriesAndTerritories),
FOREIGN KEY (geoId) REFERENCES PopData(geoId) ON UPDATE CASCADE ON DELETE RESTRICT
);

CREATE TABLE PopData(
geoId TEXT NOT NULL,
popData2019 INTEGER,
PRIMARY KEY(geoId)
);

CREATE INDEX index_COVIDData_countriesAndTerritoriesCases ON COVIDData(countriesAndTerritories, cases);
CREATE INDEX index_COVIDData_countriesAndTerritoriesDeaths ON COVIDData(countriesAndTerritories, deaths);
CREATE INDEX index_COVIDData_dateRepCases ON COVIDData(dateRep, cases);
CREATE INDEX index_COVIDData_dateRepDeaths ON COVIDData(dateRep, deaths);
CREATE INDEX foreignKey_COVIDData_dateRep ON COVIDData(dateRep);

CREATE INDEX foreignKey_Date_dateRep ON Date(dateRep);

CREATE INDEX foreignKey_COVIDData_countriesAndTerritories ON COVIDData(countriesAndTerritories);

CREATE INDEX foreignKey_Countries_countriesAndTerritories ON Countries(countriesAndTerritories);

CREATE INDEX foreignKey_Countries_geoId ON Countries(geoId);

CREATE INDEX foreignKey_PopData_geoId ON PopData(geoId);

