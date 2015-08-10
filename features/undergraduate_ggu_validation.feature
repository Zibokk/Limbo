
Feature: Undergraduate pages

Background: As a user I should be able to view the Undergraduate Pages

Given I load the Golden Gate University website


Scenario: I visit GGU Undergraduate page
  When I go to the GGU Undergraduate page
  And The Undergraduate page layout loads correctly
  Then I should see the GGU Undergraduate page content

Scenario: I visit GGU Undergraduate Overview page
  When I go to the GGU Undergraduate Overview page
  And The Undergraduate Overview page layout loads correctly
  Then I should see the GGU Undergraduate Overview page content

Scenario: I visit GGU Undergraduate Enrollment page
  When I go to the GGU Undergraduate Enrollment page
  And The Undergraduate Enrollment page layout loads correctly
  Then I should see the GGU Undergraduate Enrollment page content

Scenario: I visit GGU Undergraduate Academic Programs page
  When I go to the GGU Undergraduate Academic Programs page
  And The Undergraduate Academic Programs page layout loads correctly
  Then I should see the GGU Undergraduate Academic Programs page content

Scenario: I visit GGU Undergraduate Faculty page
  When I go to the GGU Undergraduate Faculty page
  And The Undergraduate Faultry page layout loads correctly
  Then I should see the GGU Undergraduate Faculty page content

Scenario: I visit GGU Undergraduate Alumni page
  When I go to the GGU Undergraduate Alumni page
  And The Undergraduate Alumni page layout loads correctly
  Then I should see the GGU Undergraduate Alumni page content

Scenario: I visit GGU Undergraduate Student Services page
  When I go to the GGU Undergraduate Student Services page
  And The Undergraduate Student Services page layout loads correctly
  Then I should see the GGU Undergraduate Student Services content

Scenario: I visit GGU Undergraduate Career Students page
  When I go to the GGU Undergraduate Career Students page
  And The Undergraduate Career Services page layout loads correctly
  Then I should see the GGU Undergraduate Career Students page content

Scenario: I visit GGU Undergraduate News and Events page
  When I go to the GGU Undergraduate News and Events page
  And The Undergraduate News and Events page layout loads correctly
  Then I should see the GGU Undergraduate News and Events page content

Scenario: I visit GGU Undergraduate Contact page
  When I go to the GGU Undergraduate Contact page
  And The Undergraduate Contacts page layout loads correctly
  Then I should see the GGU Undergraduate Contact page content
