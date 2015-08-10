@javascript @english @assumes_existing_test_user @misc
Feature: Navigate Sponsored Client Tools pages

Background:
  Given I have loaded the home page
  Given I am logged in as a site admin

@smoke @needs_prod_data @organizations
Scenario: Load CREDO's commitment dashboard
  When I load the admin dashboard
   And I click "Updated Campaign Dashboard"
   And I load CREDO commitments
  Then I should see CREDO commitments

Scenario: Load Sponsored Petition Priorities
  When I load the admin dashboard
   And I click Petition Upsell Priorities
  Then I should see the Sponsored Petition Priorities table
