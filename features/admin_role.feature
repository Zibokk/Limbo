Feature: Admin Roles

Scenario: Action alert staff members should see action alert tools
  When I log in as an action alert admin staff memeber
  And I go to the admin dashboard
  Then I should should see action alert links

@CHANGE-2970
Scenario: Staff members should be present
  When I go to the change.org staff page
  Then I should should see change.org staff members

Scenario: Client services staff members should see client services tools on the admin dashboard
  When I log in as a client services admin
  And I go to the admin dashboard
  Then I should see all client services tools

@CHANGE-3226
Scenario: Admins should be able to bulk add petitions to a wildfire campaign
  When I start a wildfire campaign
  Then I should see that my petition has been added to a wildfire campaign
