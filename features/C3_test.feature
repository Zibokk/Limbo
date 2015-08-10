Feature: Product view

Background:
  Given I load the Cthree home page

Scenario: I want to view energy products
  When I go to energy products page
  And I should see products page
  Then I can view different products