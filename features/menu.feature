# author Nick & Dya
Feature: Navigation Menu

Given: I want from profile page to navigate to each menu page

Scenario: Verify that user can navigate to each menu page
  When I go to profile page
  And  I click on cv page
  Then I Should see cv page
  
## no other Scenario beyond this point