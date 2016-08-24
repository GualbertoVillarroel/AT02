Feature: Universtity classes

Scenario: Go early to classes
	Given I have a class at 8:00AM
	When I take a bus at 7:00AM to go class
	Then I arrive early

Scenario: Final exam of programming
	Given I have the final exam of the semester
		And I studied all the topics
	When The test begins
		And I ready to answer all the questions
	Then I should get a good grade