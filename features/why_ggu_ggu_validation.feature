
Feature: Why page

Background: As a user I should be able to view the why ggu pages

Given I load the Golden Gate University website

Scenario: I visit WHY GGU page
  When I go to the GGU WHY page
  And The Why GGU page layout loads correctly
  Then I should see the WHY GGU page content

Scenario: I visit WHY GGU Overview page
  When I go to the GGU WHY GGU Overview page
  And The Why GGU Oversview page layout loads correctly
  Then I should see the Why GGU Overview Page content

Scenario: I visit the WHY GGU Academics page
  When I go to the GGU WHY GGU Our Academics page
  And The Why GGU Academics page layout loads correctly
  Then I should see the Why GGU Our Academics Page

Scenario: I visit WHY GGU Services page 
  When I go to the GGU WHY GGU Services page
  And The Why GGU Services page layout loads correctly
  Then I should see the Why GGU Services Page content

Scenario: I visit WHY GGU Online Learning page
  When I go to the GGU WHY GGU Online Learning page
  And The Why GGU Online Learning page layout loads correctly
  Then I should see the Why GGU Online Learning Page content

Scenario: I visit WHY GGU International page
  When I go to the GGU WHY GGU International page
  And The Why GGU International page layout loads correctly
  Then I should see the Why GGU International Page content

Scenario: I visit WHY GGU Information Request Form page
  When I go to the GGU WHY GGU Information Request Form page
  #And the page loads correctly
  Then I should see the Why GGU Information Request Form Page content

Scenario: I visit WHY GGU Apply page
  When I go to the GGU WHY GGU Apply page
  #And the page loads correctly
  Then I should see the Why GGU Apply Page content

Scenario: I visit WHY GGU News & Events page
  When I go to the GGU WHY GGU News & Events page
  And The Why GGU News & Events page layout loads correctly
  Then I should see the Why GGU News & Events Page content