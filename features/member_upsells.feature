@CHANGE-2676 @javascript @petition @membersponsor
Feature: Petitions with victory funds fulfill upsells properly

Scenario Outline: Sign a petition with victory fund upsells available
  When  I create a petition with a victory fund in <country>
  And I visit a <country> petition with sponsorship disabled
  And I sign a petition as an unregistered member with a <country> address
  Then I should see a victory fund upsell

  Examples:
  | country |
  | AU      |
  | ES      |
  | GB      |
