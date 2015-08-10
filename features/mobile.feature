#Requirements: Installation of Android SDK, Android device or emulator running
@android 
Feature: In order to confirm Android functionality

Background:
  Given I have loaded the mobile homepage
  
Scenario: Verify homepage elements
  Then I should see the logo
  And I should see the Login button
  And I should see Causes
  And I should see Previous and Next pagination buttons
  And I should see the option to use the desktop version

Scenario: Visit desktop version
  When I click the 'View full site' link
  Then I should see the option to go back to mobile
  When I click the 'Mobile Site' link in the footer
  Then I should go back to mobile

Scenario: Verify the petition view tabs
  When I click the Featured tab
  Then I should see the list of recommended petitions
  When I click the Popular tab
  Then I should see the list of todays petitions
  When I click the Recent tab
  Then I should see the list of most recent petitions

Scenario: Click a petition from the displayed list
  When I click the first petition on the displayed list
  Then I should see a petition
  And I should see two Sign buttons

Scenario: Verify sign form elements
  When I click the Sign button
  Then I should see the signing form
  And it is comprised of a bunch of fields
