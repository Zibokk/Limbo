@acceptance
Feature: informaton Request page

Background: As a user I should be able to view the request information form

Given I load the Golden Gate University website


Scenario: I visit WHY GGU Information Request Form page
  When I go to the GGU WHY GGU Information Request Form page
  #And the page loads correctly
  Then I should see the Why GGU Information Request Form Page content
