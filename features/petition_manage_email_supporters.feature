@javascript @petition
Feature: Petition creators and site admins can send email to petition signers

Background:
  Given I have created a petition

@smoke @safari_bug @wip
Scenario: As a petition creator, send a message to my supporters with the default subject
  When people have signed my petition
   And I send a message to my supporters with a lorem ipsum subject and body
  Then I should receive a confirmation that my message was sent to my supporters
