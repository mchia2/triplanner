Feature: Creating a Trip


	Scenario: Creating a Trip
		Given I am on the home page
		And I follow "New Trip"
		And I fill in "Place" with "Singapore"
		Then I should be brought to a page with 10 attractions and 10 estaurants