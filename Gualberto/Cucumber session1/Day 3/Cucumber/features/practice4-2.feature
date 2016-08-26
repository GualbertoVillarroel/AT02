Feature: Select an option

Scenario: Select sign in or create an account
	Given I select sign in
	When I put a username
		And I put a password
	Then The user can access to the web page
	
	Given I select create an account
	When I put a username
		And I put a password
	Then The user can access to the web page
