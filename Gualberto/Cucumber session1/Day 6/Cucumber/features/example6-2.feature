Feature:

Scenario Outline: Withdraw fixed amount
   Given I have <BALANCE> in my account 
   When I choose to withdraw the fixed amount of <WITHDRAWAL>
   Then I should receive <RECEIVED> cash
      And the balance of my account should be <REMAINING>
   Examples:
	| BALANCE | WITHDRAWAL | RECEIVED | REMAINING |
	| $500     | $50            | $50        | $450       |
	| $500     | $100          | $100      | $400         |
	| $500     | $200          | $200      | $300         |
