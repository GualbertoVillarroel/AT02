Feature: Item exists or not

Background: 
	Given user
	When insert password
	Then I see "Welcome message"

@posi
Scenario: Item exists
	Given I have a laptop
	When I search the item
	Then The message should be item exists

@nega
Scenario: Item doesn't exist
	Given I have a cellphone
	When I search the item
	Then The message should be item doesn't exist