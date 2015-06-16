#author Nick
Feature: Search for Videos on YouTube

Scenario: Search for Videos of Large Rodents
	Given I am on the YouTube home page
	When I search for "capybara"
	Then videos of large rodents are returned

Scenario: Search google
    When I search for results within a scope

Scenario: Validate youtube 'pause' control
	When I navigate to capybara youtube video
	And I click button pause
	Then youtube video stop