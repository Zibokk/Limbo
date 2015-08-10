Feature: Product view

Background:
  Given I load the adjugglers home page

Scenario: I want to view company information
  When I go to select the compandy tab
  And I select about us
  Then I should be taken the about us page