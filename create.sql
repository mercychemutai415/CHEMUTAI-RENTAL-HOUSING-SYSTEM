--- SQL table statements
--- Table: Province
CREATE TABLE Province (
    ProvinceID INT PRIMARY KEY,
    ProvinceName VARCHAR (100) NOT NULL
);
--- Table: City
CREATE TABLE City (
    CityID INT PRIMARY KEY,
    CityName VARCHAR (100) NOT NULL,
    ProvinceID INT NOT NULL,
    FOREIGN KEY (ProvinceID) REFERENCES Province (ProvinceID)
);
--- Table: Property
CREATE TABLE Property (
    PropertyID INT PRIMARY KEY,
    CityID INT NOT NULL,
    FOREIGN KEY (CityID) REFERENCES City(CityID)
);
--- Table: Builder
CREATE TABLE Builder (
    BuilderID INT PRIMARY KEY,
    BuilderName VARCHAR (100) NOT NULL
);
--- Table: Builds 
CREATE TABLE Builds (
    BuilderID INT,
    PropertyID INT,
    PRIMARY KEY (BuilderID, PropertyID),
    FOREIGN KEY (BuilderID) REFERENCES Builder(BuilderID),
    FOREIGN KEY (PropertyID) REFERENCES Property(PropertyID)
);
--- Table: RentalUnit
CREATE TABLE RentalUnit (
    RentalUnitID INT PRIMARY KEY,
    PropertyID INT NOT NULL,
    Floor INT CHECK (Floor >= 0),
    Room INT CHECK (Room > 0),
    Rent DECIMAL(10,2) CHECK (Rent >= 0),
    FOREIGN KEY (PropertyID) REFERENCES Property(PropertyID)
);
--- Table: Person
CREATE TABLE Person (
    PersonID INT PRIMARY KEY,
    PersonName VARCHAR (100) NOT NULL
);

--- Table: Rents 
CREATE TABLE Rents (
    RentalUnitID INT,
    PersonID INT,
    StartDate DATE NOT NULL,
    EndDate DATE,
    PRIMARY KEY (RentalUnitID, PersonID),
    FOREIGN KEY (RentalUnitID) REFERENCES RentalUnit (RentalUnitID),
    FOREIGN KEY (PersonID) REFERENCES Person (PersonID),
	CHECK (EndDate > StartDate)
);