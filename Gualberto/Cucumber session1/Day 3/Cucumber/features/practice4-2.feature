Feature: Select an option

Scenario: Select sign in or create an account
	Given I select sign in
	When I insert the username
		And I insert the password
	Then The user can access to the web page
	
	Given I select create an account
	When I insert a new username
		And I insert a new password
