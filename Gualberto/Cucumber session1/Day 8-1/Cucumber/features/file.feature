Feature:
Scenario Outline: Verifying a list of users
	Given Admin user is defined
	When I insert user <USER>
	Then I verify that the user exists
	Examples:
	| USER |
	| pepe |
	| juan |
	| maria |

Scenario: Verifying a user exists
	Given Admin user is defined
	When I insert user pepe
	Then I verify that the user exists

Scenario: Verifying a user doesn't exists
	Given Admin user is defined
	When I insert user pedro
	Then I verify that the user doesn't exists

	