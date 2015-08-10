@javascript @petition @rebrand
Feature: Edit a petition

Background:
 Given I am logged in as a site and edit want to edit petitions

@smoke @safari_bug
Scenario: Edit a petition and add a photo
  When I add a photo to a petition
  Then I should see the photo on the petition show page

Scenario: Edit a petition and add a video
  When I embed a video link on a petition
  Then I should see the video on the petition show page

Scenario: Edit all fields on a petition
  When I edit every field on a petition
  Then my petition should save without errors after edit petition

@CHANGE-2810
Scenario: I add a tag to my petition
  When I create a petition that I want to tag and tag it
  Then I should see my tag added the petition

@CHANGE-2810
Scenario: I delete a tag from my petition
  When I create a petition that I want to tag and tag it
  And I want to delete a tag from my petition
  Then I verify that the tag has been deleted from my petition

@smoke @wip
Scenario: Edit the minimum required fields on a petition
  When I edit minimum required fields on a petition
  Then my petition should save without errors after edit petition

@chromedriver_bug
Scenario: Try to set the deadline more than a year in the future
  When I edit the deadline to be more than year in the future
  Then I should not be allowed to save my changes

# known bug in Chrome that manifests around datepicker:
# http://code.google.com/p/selenium/issues/detail?id=2750

Scenario: Naming a cause
  When I set my cause to Animals and reload my petition
  Then I should see the Sign form 

#edits a petition for cause, reloads the petition sign page for CHANGE-608 