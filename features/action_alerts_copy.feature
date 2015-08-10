@javascript @chromedriver_bug @english @actionalerts
Feature: Copy action alerts

Background:
  Given I am logged in as a site admin
    And I have identified petition URLs to use in an action alert

# cannot assign any to smoke test until the copy link is deterministic
Scenario: Copy an action alert sent to India members
  When I copy an action alert sent to India members
  Then I should see a copy of my action alert on the dashboard

Scenario: Copy an action alert sent to members using inclusion rules of CountrySelector and FileSelector and copy alert content
  When I copy an action alert sent to UK members who meet another criteria selected into a flat file with copied alert content
  Then I should see a copy of my action alert on the dashboard

Scenario: Copy an action alert sent to signers of one petition minus signers of another petition
  When I copy an action alert sent to signers of one petition minus signers of another petition
  Then I should see a copy of my action alert on the dashboard

Scenario: Send an action alert AB test to signers of one petition minus another
  When I copy an action alert AB test sent to signers of one petition minus another
  Then I should see a copy of my action alert on the dashboard
