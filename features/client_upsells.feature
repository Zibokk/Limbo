Feature: Skip or sign upsells
In order to share my signed petition, as a signer I want to move through the upsells by skipping all but the last, which I'll sign

@smoke @Change-2374
Scenario: After signing a petition the user sees upsells
  When I have clicked a petition from the featured list
  When I sign and submit a petition
  Then I should see an upsold petition with the title Sign these Urgent Petitions
  And I should see a suggestion that I might like the displayed petition
  And I should see buttons for skipping the upsell or signing it
  And I should see an offer to receive campaign updates, plus a checkbox set for acceptance
  When I skip an upsold petition that is not the last in the series
  Then I should see another upsell
  When I sign the upsold petition that is last in the series
  Then I should see a Signed message plus options for sharing my signed petition


Scenario Outline: After signing a petition the user sees upsells
  When I have clicked a petition from <context>
  When I sign and submit a petition
  Then I should see an upsold petition with the title Sign these Urgent Petitions
  And I should see a suggestion that I might like the displayed petition
  And I should see buttons for skipping the upsell or signing it
  And I should see an offer to receive campaign updates, plus a checkbox set for acceptance
  When I skip an upsold petition that is not the last in the series
  Then I should see another upsell
  When I sign the upsold petition that is last in the series
  Then I should see a Signed message plus options for sharing my signed petition

    Examples:
    | context           |
    | the home page     |
    | the causes page   |
    | the featured list |

