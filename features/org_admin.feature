@javascript @misc
Feature: Administer an Organization

@smoke @needs_prod_data @organizations @production
Scenario: View FedCURE organization page as a user
  When I go to the FedCURE organization page
  Then I should see the FedCURE profile

@wip
Scenario: View an organization page as a user

