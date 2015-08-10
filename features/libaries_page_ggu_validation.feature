
Feature: Libaries pages

Background: As a user I should be able to view the Libaries Pages

Given I load the Golden Gate University website

Scenario: I visit GGU Libaries page
  When I go to the GGU Libaries page
  And The Library page layout loads correctly
  Then I should see the GGU Libaries page content