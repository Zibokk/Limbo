@javascript @petition
Feature: Sign petitions

Background:
  Given I have clicked a petition from the home page

@smoke @safari_bug @Change-2374
Scenario: Sign a petition as a new U.S. user and street address
  When I sign a petition as an unregistered member with a U.S. street address
  Then I should see the share pane

@smoke @safari_bug
Scenario: Sign a petition as a new U.S. user and street address from the recent petition page
  When I sign a petition as an unregistered member from the recent petition page
  Then I should see the share pane

Scenario: Sign a petition as a new U.S. user and P.O. box
  When I sign a petition as an unregistered member with a U.S. P.O. Box and 9-digit zip code
  Then I should see the share pane

Scenario: Sign a petition as a new U.S. user and tricky address that Google Maps has trouble resolving
  When I sign a petition as an unregistered member with a U.S. address that is tricky for Google Maps
  Then I should see the share pane

@smoke  @safari_bug @Change-2374
Scenario: Sign a petition as a new user with a Canada address
  When I sign a petition as an unregistered member with a Canada address
  Then I should see the share pane


Scenario: Sign a petition as a new user with an India address
  When I sign a petition as an unregistered member with an India address in which there is no number in the street
  Then I should see the share pane


Scenario: Sign a petition as a new user with an England address
  When I sign a petition as an unregistered member with an England address
  Then I should see the share pane


Scenario: Sign a petition as a new user with a Sweden address
  When I sign a petition as an unregistered member with a Sweden address in which the street name precedes the number
  Then I should see the share pane

Scenario: Sign a petition with a reason as an unregistered non-U.S. user
  When I sign a petition with a reason as an unregistered member with a Canada address
  Then I should see the share pane

Scenario: Sign a petition with a reason as an unregistered U.S. user
  When I sign a petition with a reason as an unregistered member with a U.S. street address
  Then I should see the share pane

Scenario: Sign a petition as a logged-in Spain user
  When I sign a petition as a logged-in Spain user
  Then I should see the signature success message

@smoke @safari_bug
Scenario: Sign a petition as a logged-in U.S. user
  When I sign a petition as a logged-in U.S. user
  Then I should see the signature success message

Scenario: Sign a petition with a reason as a logged-in U.S. user
  When I sign a petition with a reason as a logged-in U.S. user
  Then I should see the signature success message
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

@wip
Scenario: Sign a petition as an identified user
  When I sign a petition as an identified user
  Then I should see the share pane

@wip
Scenario: Sign a petition with a reason as an identified user
  When I sign a petition as an identified user with a reason
  Then I should see the share pane

@wip
  Scenario: Sign a petition as a U.S. Facebook user and do not share on my timeline
  When I sign a petition as a U.S. Facebook user and do not share on my timeline
  Then I should see an upsell
   And the petition should not be posted on my timeline

@wip
Scenario: Sign a petition as a U.S. Facebook user and share on my timeline
  When I sign a petition as a U.S. Facebook user and share on my timeline
  Then I should see an upsell
   And the petition should be posted on my timeline

@wip
Scenario: Sign a petition as a U.S. Facebook user with a reason and share on timeline
  When I sign a petition as a U.S. Facebook user with a reason and share on my timeline
  Then I should see an upsell
   And the petition should be posted on my timeline
   And my reason for signing should be posted on my timeline
