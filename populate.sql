--- Data loading scripts or procedures 
--- Insert Provinces (Canada)
INSERT INTO Province (ProvinceID, ProvinceName) VALUES 
(1, 'Ontario'),
(2, 'Quebec'),
(3, 'British Columbia'),
(4, 'Alberta'),
(5, 'Manitoba');
--- Insert Cities (Belonging to Provinces)
INSERT INTO City (CityID, CityName, ProvinceID) VALUES 
(1, 'Toronto', 1),
(2, 'Ottawa', 1),
(3, 'Montreal', 2),
(4, 'Vancouver', 3),
(5, 'Calgary', 4),
(6, 'Winnipeg', 5);
--- Insert Properties 
INSERT INTO Property (PropertyID, CityID) VALUES 
(1, 1), -- Toronto
(2, 2), -- Ottawa
(3, 3), -- Montreal
(4, 4), -- Vancouver
(5, 5), -- Calgary
(6, 6); -- Winnipeg

--- Insert Builders
INSERT INTO Builder (BuilderID, BuilderName) VALUES 
(1, 'Dream Homes Ltd.'),
(2, 'Skyline Builders'),
(3, 'Blue Horizon Developments');
--- Assign Builders to Properties (Builds Table)
INSERT INTO Builds (BuilderID, PropertyID) VALUES 
(1, 1),
(1, 2),
(2, 3),
(2, 4),
(3, 5),
(3, 6);

--- Insert Rental Units 
INSERT INTO RentalUnit (RentalUnitID, PropertyID, Floor, Room, Rent) VALUES 
(1, 1, 2, 3, 1800.00),
(2, 2, 5, 2, 1500.00),
(3, 3, 1, 4, 2200.00),
(4, 4, 3, 1, 1300.00),
(5, 5, 7, 2, 1600.00),
(6, 6, 4, 3, 1700.00);
--- Insert Persons
INSERT INTO Person (PersonID, PersonName) VALUES 
(1, 'Alice Johnson'),
(2, 'Michael Smith'),
(3, 'Sophia Brown'),
(4, 'James Wilson'),
(5, 'Emma Davis');
--- Insert Rental Agreements (Rents Table)
INSERT INTO Rents (RentalUnitID, PersonID, StartDate, EndDate) VALUES 
(1, 1, '2024-01-01', '2025-01-01'),
(2, 2, '2023-06-01', '2024-06-01'),
(3, 3, '2024-03-15', '2025-03-15'),
(4, 4, '2023-09-01', '2024-09-01'),
(5, 5, '2024-02-01', '2025-02-01');
