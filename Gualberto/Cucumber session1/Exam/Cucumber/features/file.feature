Feature: Reservation for a flight

Background: 
	Given user
	When insert password
	Then I see "Welcome message"
@outlin
Scenario Outline: 
	Given user is ok
	When I select a flight from <Origin> to <Destination>
		And I select the date <Date>
		And I select the flight <Flight>
	Then The availability should be <Availability>

	Examples:
	| Origin | Destination | Date       | Flight | Availability |
	| TJA    | CBA         | 09/01/2016 | 0375   | OK           |
	| SCZ    | LPZ         | 10/02/2016 | 0220   | OK           |