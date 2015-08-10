@CHANGE-2676 @javascript @membersponsor
Feature: Member Sponsored Petitions

Scenario: Sign a petition as a US user with sponsorship enabled
  When I disable victory funds for all US users
  And I visit a US petition with sponsorship enabled
  And I sign a petition as an unregistered member with a U.S. street address
  Then I should not see the petition sponsorship page

Scenario: Sign a petition as a GB user with sponsorship enabled
  When I enable victory funds for all GB users
  And I visit a GB petition with sponsorship enabled
  And I sign a petition as an unregistered member with a GB address
  And I dismiss the share modal
  Then I should see the petition sponsorship page

Scenario: Sign a petition as a GB user with sponsorship disabled
  When I enable victory funds for all GB users
  And I visit a GB petition with sponsorship disabled
  And I sign a petition as an unregistered member with a GB address
  Then I should not see the petition sponsorship page

Scenario: Sponsor a petition as a GB user with a card with an incorrect security code
  When I enable victory funds for all GB users
  And I visit a GB petition with sponsorship enabled
  And I sign a petition as an unregistered member with a GB address
  And I dismiss the share modal
  And I enter billing information with an incorrect security code
  Then I should see the sponsorship success message

Scenario: Sponsor a petition as a GB user with an expired card
  When I enable victory funds for all GB users
  And I visit a GB petition with sponsorship enabled
  And I sign a petition as an unregistered member with a GB address
  And I dismiss the share modal
  And I enter billing information with an expired card
  Then I should see a submit failure message

Scenario: Sign a petition as an ES user with sponsorship enabled
  When I enable victory funds for all ES users
  And I visit an ES petition with sponsorship enabled
  And I sign a petition as an unregistered member with an ES address
  And I dismiss the share modal
  Then I should see the petition sponsorship page

Scenario: Sponsor a petition as an ES user with a card with an incorrect number
  When I enable victory funds for all ES users
  And I visit an ES petition with sponsorship enabled
  And I sign a petition as an unregistered member with an ES address
  And I dismiss the share modal
  And I enter billing information with an incorrect number
  Then I should see a submit failure message

Scenario: Sponsor a petition as an ES user with a card with an invalid security code
  When I enable victory funds for all ES users
  And I visit an ES petition with sponsorship enabled
  And I sign a petition as an unregistered member with an ES address
  And I dismiss the share modal
  And I enter billing information with an invalid security code
  Then I should see a submit failure message

Scenario: Sponsor a petition as an ES user with valid billing info
  When I enable victory funds for all ES users
  And I visit an ES petition with sponsorship enabled
  And I sign a petition as an unregistered member with an ES address
  And I dismiss the share modal
  And I enter billing information with a valid card
  Then I should see the sponsorship success message

Scenario: Sponsor a petition as an ES user with a declined card
  When I enable victory funds for all ES users
  And I visit an ES petition with sponsorship enabled
  And I sign a petition as an unregistered member with an ES address
  And I dismiss the share modal
  And I enter billing information with a declined card
  Then I should see the sponsorship failure message

