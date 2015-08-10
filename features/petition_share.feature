@javascript @petition @rebrand @wip
Feature: Sharing a petition

Background:
  Given I have clicked a petition from the home page

Scenario Outline: Share a petition with email contacts
  When I sign the petition as an unregistered member with a U.S. street address
   And I import my contacts from <email> with password <password>
  Then I should see a confirmation message that invitations have been sent

Examples:
  | email                 | password    |
  | change_qa@yahoo.com   | Testing123  |
  | changeqa139@gmail.com | Testing123  |

## NOTE: this should work, but it appears to be trying to click on a link that isn't visible
@wip
Scenario: Share a petition with email contacts via action box
  When I sign the petition as an unregistered member with a U.S. street address
  Then I should be able to import contacts using the action box link
   And I should be able to import contacts using the action box icon

Scenario: Share a petition via Twitter
  When I sign the petition as an unregistered member with a U.S. street address
  Then I should be able to share the petition via Twitter

###@chromedriver_bug
#Scenario: Share a petition via widget
  ##When I sign the petition as an unregistered member with a U.S. street address
  ##Then I should be able to grab a widget

## NOTE: this also should work, but it doesn't, and it might just be really brittle
@wip
Scenario: Share a petition via Facebook
  When I sign a petition as an unregistered member with a U.S. street address
   And I share the petition on Facebook from the action box
  Then the share should appear on my friend's timeline
