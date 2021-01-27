CREATE OR ALTER PROCEDURE CreateAirport @Name VARCHAR(150), @City VARCHAR(150), @Country VARCHAR(150)
AS
	INSERT INTO Airports(Name, City, Country)
	VALUES(@Name, @City, @Country)
GO

CREATE OR ALTER PROCEDURE CreateAirline @Name VARCHAR(150)
AS
	INSERT INTO Airlines(Name)
	VALUES(@Name)
GO

CREATE OR ALTER PROCEDURE CreateRoute @AirlineOwner INTEGER, @AirlineOperator INTEGER, @DepartureIATA VARCHAR(3), @DestinationIATA VARCHAR(3)
AS
	INSERT INTO Routes(AirlineOwner, AirlineOperator, DepartureIATA, DestinationIATA)
	VALUES(@AirlineOwner, @AirlineOperator, @DepartureIATA, @DestinationIATA)
GO

CREATE OR ALTER PROCEDURE DeleteAirport @IATA VARCHAR(3)
AS
	DELETE FROM Airports
	WHERE IATA = @IATA
GO

CREATE OR ALTER PROCEDURE DeleteAirline @ID INTEGER
AS
	DELETE FROM Airlines
	WHERE ID = @ID
GO

CREATE OR ALTER PROCEDURE DeleteRoute @ID INTEGER
AS
	DELETE FROM Routes
	WHERE ID = @ID
GO

CREATE OR ALTER PROCEDURE GetAllAirports
AS
	SELECT * FROM Airports
GO

CREATE OR ALTER PROCEDURE GetAllAirlines
AS
	SELECT * FROM Airlines
GO

CREATE OR ALTER PROCEDURE GetAllRoutes
AS
	SELECT * FROM Routes r
	LEFT OUTER JOIN Airlines al1 ON al1.ID = r.AirlineOwner
	LEFT OUTER JOIN Airlines al2 ON al2.ID = r.AirlineOperator
	LEFT OUTER JOIN Airports ap1 ON ap1.IATA = r.DepartureIATA
	LEFT OUTER JOIN Airports ap2 ON ap2.IATA = r.DestinationIATA
GO