
Feature: Alumni pages

Background: As a user I should be able to view the Alumni Pages

Given I load the Golden Gate University website

Scenario: I visit GGU Alumni Giving page
  When I go to the GGU Alumni Giving page
  And The GGU Alumni Giving page layout loads correctly
  Then I should see the GGU Alumni Giving page content

@wip
Scenario: I visit GGU Alumni Services & Benefits page
  When I go to the GGU Alumni Services & Benefits page
  And The Graduate Services & Benefits page layout loads correctly
  Then I should see the GGU Alumni Giving page content