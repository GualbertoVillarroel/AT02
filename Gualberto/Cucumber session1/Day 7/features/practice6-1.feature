Feature: Customer search
@outline
Scenario Outline: 
    Given I search user <USER>
    When I insert id <ID>
    Then I have priced <PRICE>

	Examples:
	| USER  | ID   | PRICE |
	| pepe  | 123  | 100 |
	| juan  | 456  | 200 |
	| maria | 789  | 300 |

@normal
Scenario: Searching a client
    Given I search user pepe
    When I insert id 123
    Then I have priced 100
