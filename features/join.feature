@javascript @misc
Feature: Register new user and organization accounts

Background:
  Given I load the home page

@smoke
Scenario: Register as a new user
  When I register a new account
  Then I should see a success message containing my email address

@smoke  @organizations @wip
Scenario: Add a U.S. organization
  When I register a U.S. organization
  Then I should see a warning to log in or sign up to register my organization
  When I sign up as the admin of the organization
  Then I should see the organization signup success message

@CHANGE-2649
Scenario: I create an organization as a logged in member and I select my organization from the this petition is by
  When I create an organization as a logged in member from the assign organization modal
  Then I verify that my organization is listed in the this petition is by drop menu
