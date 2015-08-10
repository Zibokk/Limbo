@javascript @petition @rebrand @wip
Feature: Error handling on petitions signed without required information

Background:
  Given I have clicked a petition from the home page

Scenario: Attempt to sign a petition with empty First Name as an anonymous user
  When I sign a petition as an unregistered member with empty First Name
  Then I should see form error

Scenario: Attempt to sign a petition with empty Last Name as an anonymous user
  When I sign a petition as an unregistered member with empty Last Name
  Then I should see form error

Scenario: Attempt to sign a petition with empty Email as an anonymous user
  When I sign a petition as an unregistered member with empty email
  Then I should see form error

Scenario: Attempt to sign a petition with empty Address as an anonymous user
  When I sign a petition as an unregistered member with empty Address
  Then I should see form error

Scenario: Attempt to sign a petition with empty City as an anonymous user
  When I sign a petition as an unregistered member with empty City
  Then I should see form error

Scenario: Attempt to sign a petition with empty State as an anonymous user
  When I sign a petition as an unregistered member with empty State
  Then I should see form error

Scenario: Attempt to sign a petition with empty Zipcode as an anonymous user
  When I sign a petition as an unregistered member with empty Zipcode
  Then I should see form error
