@javascript @petition @rebrand
Feature: Anyone can start a petition

Background:
  Given I click through to Start A Petition from the home page


Scenario: Start a petition with blank fields
  When I submit a blank Start A Petition form
  Then I should see an error message about the petition could not be created because it has errors

@smoke
Scenario: Start a petition as an unregistered user and register
  When I submit a valid petition form
  Then I should see a success message
  When I submit a new user form as a petition creator
  Then I should see a message to customize my petition

@CHANGE-2252
Scenario: Start a petition as a new user on the behalf of an organization
  When I start a petition as a new member on the behalf of an organization
  Then  I should see a message to customize my petition
@CHANGE-2252
Scenario: Start a petition on the behalf of an organization as a logged in member of change.org
  When I start a petition on the behalf of an organization as a logged in member of change.org
  Then  I should see a message to customize my petition

@CHANGE-2252
Scenario: I create an organization as a logged in member from the assign organization modal
  When I create an organization as a logged in member from the assign organization modal
  Then  I should see a message to customize my petition

@CHANGE-2252
  Scenario: Start a petition on the behalf of an organization and leave the assign organization form blank and click submit
  Then I submit a assign organization form without filling out the fields required
  Then I should see an error message informing me that the form can not be blank

@wip
Scenario: Start a petition as an identified user
  When I start a petiton as an identified user
  Then I should not be prompted to login or join
   And I should see a message to customize my petition

Scenario: As an French speaker when I start a petition I should see a confirmation in my native language
  When I start a petition as a registered French speaker
  Then I should be notified in French that my petition has started

@CHANGE-2265
Scenario: As a new petition creator when I save a petition I should be the first signer
  When I set my cookie to see the first signer experiment
  And I submit a valid petition form
  Then I should be the first signer as a new user

@CHANGE-2265
Scenario: As a register petition creator for a organiztion when I save a petition I should be the first signer
  When I set my cookie to see the first signer experiment
  And I start a petition as a new member on the behalf of an organization
  Then I should be the first signer as a organization

@CHANGE-2265
Scenario: As a petition creator that is a organization member when I save a petition I should be the first signer
  When I set my cookie to see the first signer experiment
  And I start a petition as a new member on the behalf of an organization
  Then I should be the first signer as a organization

@tabs
Scenario: As a user I should see the view tab on the petition show page
  When I submit valid Change.org login credentials
  And I select a petition
  Then I should see the view tab

@tabs
Scenario: As a user I should be able to use the edit tab to go to the edit page
  When I submit valid Change.org login credentials
  And I select a petition
  And I click the edit tab
  Then I should be taken to the edit page

@tabs
Scenario: As a user I should be able to use the message tab to go to the message page
  When I submit valid Change.org login credentials
  And I select a petition
  And I click the message tab
  Then I should be taken to the message page

@tabs
Scenario: As a user I should be able to use the victory tab to go to the victory page
  When I submit valid Change.org login credentials
  And I select a petition
  And I click the victory tab
  Then I should be taken to the victory page

@tabs

Scenario: As a organization admin I should see the view tab on the petition show page
  When I start a petition as a new member on the behalf of an organization
  Then I should see the view tab

@tabs
Scenario: As a organization admin I should be able to use the edit tab to go to the edit page
  When I start a petition as a new member on the behalf of an organization
  And I click the edit tab
  Then I should be taken to the edit page

@tabs
Scenario: As a organization admin I should be able to use the message tab to go to the message page
  When I start a petition as a new member on the behalf of an organization
  And I click the message tab
  Then I should be taken to the message page

@tabs
Scenario: As a organization admin I should be able to use the victory tab to go to the victory page
  When I start a petition as a new member on the behalf of an organization
  And I click the victory tab
  Then I should be taken to the victory page

