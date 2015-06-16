# author Nick
Feature: Google Search

Given: As a tester I want to search word Accenture on page google search

Scenario: Verify that google seach returns expected search results
  When I navigate to the google page
  And  I search for Accenture using the search bar
  Then the search results contain "Accenture"


## no other Scenario beyond this point
  And do tear down