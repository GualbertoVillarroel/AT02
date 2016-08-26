Feature: Form to create a new gmail account

Scenario: Name
	Given I put my first name: Gualberto
		And I put my last name: Villarroel

Scenario: Username
	Given I choose a username: gualyvc@gmail.com

Scenario: Password
	Given I create a password: Abc123
		And I confirm the password: Abc123

Scenario: Birthday
	Given I select a month: July
		And I put a day: 07
			And I put a year: 1986

Scenario: Gender
	Given I select a gender: Male

Scenario: Mobile Phone
	Given I put my mobile phone: 79343337

Scenario: Current email address
	Given I put my current email: gualyvc@hotmail.com