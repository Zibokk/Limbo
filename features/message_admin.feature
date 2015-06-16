# author Nick & Dya
Feature: Message admin

Given: I want to send a message to the administrator of nickcornovan.com website

##(Happy Path)
Scenario: Verify that a user can send message to the administrator
  When I go to contacts page to send a message to the admin
  And  I enter valid credentials and submit the following:
  |name|
  |e-mail|
  |webSite|
  |text|
  Then I submit and should see a thank you message

 Scenario: Verify that a user can send message with blank website field
  When I enter valid credentials and leave blank website field:
  |name|
  |email|
  |blank|
  |text| 
  Then I submit and should see a confirmation message

##(Sad Path)
Scenario: Verify that a user can not send message with blank name field
  When I enter valid credentials and leave blank name:
  |blank|
  |email|
  |webSite|
  |text| 
  Then I submit and should see name error message


Scenario: Verify that a user can not send message with blank email field
  When I enter valid credentials and leave blank email:
  |name|
  |blank|
  |webSite|
  |text| 
  Then I submit and should see email error message


Scenario: Verify that a user can not send message with blank text area
  When I enter valid credentials and leave blank text area:
  |name|
  |email|
  |webSite|
  |blank| 
  Then I submit and should see text error message

## no other Scenario beyond this point