Feature: Creating a Trip


	Scenario: Creating a Trip
		Given I am logged in
		And I follow "New Trip"
		And I fill in "Place" with "Singapore"
		And I click "Create Trip"
		Then I should be brought to a page with 10 attractions and 10 estaurants