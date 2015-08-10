@production @javascript @petition
Feature: Smoke test of the production environment

Scenario: Starting a petition
  When I click through to Start A Petition from the home page
   And I submit a valid petition form
  Then I should see a success message
  When I submit a new user form as a petition creator
  Then I should see a message to customize my petition
  When I sign my own petition
  Then I should see the share pane

Scenario: Signing the test petition
  When I visit test petition 1
   And I sign the petition as an unregistered member with a U.S. street address
  Then I should see the share pane

Scenario: Signing an upsell petition
  When I visit test petition 1
   And I sign the petition as an unregistered member with a U.S. street address
   And I visit test petition 2
   And I sign the petition
  Then I should see an upsell
  When I skip an upsold petition that is not the last in the series
   And I opt out and sign the last upsell
  Then I should see the share pane

Scenario: Sharing a petition via email
  When I visit test petition 1
   And I sign a petition as an unregistered member with a U.S. street address
   And I share with my Gmail contacts
  Then I should see a confirmation message that invitations have been sent

Scenario: Sharing a petition via Facebook
  When I visit test petition 1
   And I sign a petition as an unregistered member with a U.S. street address
  Then I should be able to share on Facebook

Scenario: Registering as a new user
  When I load the home page
   And I register a new account
  Then I should see a success message containing my email address
