@acceptance
Feature: Apply page

Background: As a user I should be able to view the request iformation form

Given I load the Golden Gate University website

Scenario: I visit WHY GGU Apply page
  When I go to the GGU WHY GGU Apply page
 And The GGU Apply page layout loads correctly
  Then I should see the Why GGU Apply Page content
