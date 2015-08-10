@javascript @chromedriver_bug @english @actionalerts
Feature: Send action alerts

Background:
  Given I am logged in as a site admin
    And I have identified petition URLs to use in an action alert

@smoke @wip
Scenario: Send an action alert to India members
  When I send an action alert to India members
  Then I should see my action alert scheduled on the dashboard

@smoke
Scenario: Send an action alert to members using inclusion rules of CountrySelector and FileSelector and copy alert content
  When I create an action alert to UK members who meet another criteria selected into a flat file with copied alert content
  Then I should see my action alert scheduled on the dashboard

Scenario: Send an action alert to signers of one petition minus signers of another petition
  When I send an action alert to signers of one petition minus signers of another petition
  Then I should see my action alert scheduled on the dashboard

Scenario: Send an action alert AB test to signers of one petition minus another
  When I send an action alert AB test to signers of one petition minus another
  Then I should see my action alert scheduled on the dashboard

Scenario: Send an action alert AB test to signers of one petition minus the most recent mailing
  When I send an action alert AB test to signers of one petition minus the most recent mailing
  Then I should see my action alert scheduled on the dashboard
