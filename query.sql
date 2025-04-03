--- Basic SQL queries demonstrating functionality
--- a) Retrieve All Rental Units and Their Details
SELECT 
    RentalUnitID, CityName, PropertyID, 
    Floor, Room, Rent 
FROM RentalUnit 
JOIN Property ON PropertyID = PropertyID
JOIN City ON CityID = CityID;
--- b) Find All Tenants and Their Rentals
SELECT 
    PersonName, RentalUnitID, Floor, Room, Rent, 
    CityName, ProvinceName, StartDate, EndDate 
FROM Rents
JOIN Person ON PersonID = PersonID
JOIN RentalUnit ON RentalUnitID = RentalUnitID
JOIN Property p ON PropertyID = PropertyID
JOIN City c ON CityID = CityID
JOIN Province ON ProvinceID = ProvinceID;
--- c) Find Available Rental Units (Units Not Rented)
SELECT RentalUnitID, CityName, Floor, Room, Rent
FROM RentalUnit 
JOIN Property ON PropertyID = PropertyID
LEFT JOIN Rents ON RentalUnitID = RentalUnitID
WHERE RentalUnitID IS NULL;

--- d) List All Properties Built by Each Builder
SELECT BuilderName, PropertyID, CityName, ProvinceName
FROM Builds 
JOIN Builder ON BuilderID = BuilderID
JOIN Property ON PropertyID = PropertyID
JOIN City ON CityID = CityID
JOIN Province ON ProvinceID = ProvinceID;

--- e) Get Rental Prices for Each City
SELECT CityName, AVG(Rent) AS Average Rent
FROM RentalUnit 
JOIN Property ON PropertyID = PropertyID
JOIN City ON CityID = CityID
GROUP BY CityName
ORDER BY Average Rent DESC;
