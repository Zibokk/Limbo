
Feature: Graduate pages

Background: As a user I should be able to view the Graduate Pages

Given I load the Golden Gate University website

Scenario: I visit GGU Graduate page
  When I go to the GGU Graduate page
  And The Graduate page layout loads correctly
  Then I should see the GGU Graduate page content

Scenario: I visit GGU Graduate Overview page
  When I go to the GGU Graduate Overview page
  And The Graduate Overview page layout loads correctly
  Then I should see the GGU Graduate Overview page content

Scenario: I visit GGU Graduate Enrollment page
  When I go to the GGU Graduate Enrollment page
  And The Graduate Enrollment page layout loads correctly
  Then I should see the GGU Graduate Enrollment page content

Scenario: I visit GGU Graduate Academic Programs page
  When I go to the GGU Graduate Academic Programs page
  And The Graduate Academic page layout loads correctly
  Then I should see the GGU Graduate Academic programs page content

Scenario: I visit GGU Graduate Faculty page
  When I go to the GGU Graduate Faculty page
  And The Graduate Faculity page layout loads correctly
  Then I should see the GGU Graduate Faculty page content

Scenario: I visit GGU Graduate International page
  When I go to the GGU Graduate International page
  And The Graduate International page layout loads correctly
  Then I should see the GGU Graduate International page content

Scenario: I visit GGU Graduate Alumni page
  When I go to the GGU Graduate Alumni page
  And The Graduate Alumni page layout loads correctly
  Then I should see the GGU Graduate Alumni page content

Scenario: I visit GGU Graduate Student Services page
  When I go to the GGU Graduate Student Services page
  And The Graduate Student Services page layout loads correctly
  Then I should see the GGU Graduate Student Services content 

Scenario: I visit GGU Graduate Career Services page
  When I go to the GGU Graduate Career Services page
  And The Graduate Career services page layout loads correctly
  Then I should see the GGU Graduate Career Services page content

Scenario: I visit GGU Graduate News and Events page
  When I go to the GGU Graduate News and Events page
  And The Graduate News and Events page layout loads correctly
  Then I should see the GGU Graduate News and Events page content

Scenario: I visit GGU Graduate Contact page
  When I go to the GGU Graduate Contact page
  And The Graduate Contact page layout loads correctly
  Then I should see the GGU Graduate Contact page content