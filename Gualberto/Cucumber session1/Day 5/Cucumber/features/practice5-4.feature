Feature: Daily activities 
	
Background: 
	Given I am at Jala Foundation
		And I have BDT class
			And I have to do some tasks:
			| Task1 |  |
			| Task2 | Exam |

Scenario: Ruby tasks
	When I work on Ruby tasks
	Then The task's table should look:
	| Task1 | Ruby |
	| Task2 | Exam |

Scenario: Cucumber tasks
	When I work on Cucumber tasks
	Then The task's table should look:
	| Task1 | Cucumber |
	| Task2 | Exam |