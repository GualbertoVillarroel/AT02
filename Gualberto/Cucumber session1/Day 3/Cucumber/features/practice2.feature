Feature: Testing Google main page

Scenario: Run a browser and open the Google page
	Given I open the browser Google Chrome
	When I put the page to go to Google.com
	Then The main page of Google should be shown

Scenario: Verify that the logo of Google is shown
	Given I go to the Google main page
	When The loading is done
	Then The logo of Google should be shown

Scenario: Hide the default message of the search bar
	Given I go to the Google main page
	When I clic on the search bar
	Then The default message written in the search bar should disappear

Scenario: 
	Given I go to the Google main page
	When I put "cars" in the search bar field
		And I press "Enter"
	Then The browser should show links related to cars