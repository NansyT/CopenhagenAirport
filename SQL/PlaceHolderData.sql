INSERT INTO Airports(IATA, Name, City, Country)
VALUES('CPH','Copenhagen Airport', 'Copenhagen', 'Denmark'),
('AAR','Aarhus Airport','Aarhus','Denmark'),
('EDI','Edinburgh Airport','Edinburgh','Scotland'),
('IAD','Dulles International Airport','Washington','USA')

INSERT INTO Airlines(Name)
VALUES('Norwegian Air'),
('American Airlines'),
('British Airways')

INSERT INTO Routes(AirlineOwner, AirlineOperator, DepartureIATA, DestinationIATA)
VALUES(1, 1, 'CPH','AAR'),
(2,3, 'EDI','IAD'),
(2,1, 'IAD','CPH')