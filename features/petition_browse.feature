@javascript @petition @rebrand
Feature: Browse petitions in various indexes

Background:
  Given I have loaded the home page

@smoke
Scenario: Petition index loads on the home page
  Then I should see the petition list

@smoke @safari_bug @wip
Scenario: Load a self-signed petition-show page
  When I click through to a self-signed petition
  Then I should see petition-show page assets

@CHANGE-2590
Scenario: I search change.org site for content and it returns a search result
  When I search for content on change.org using the side search
  Then I should see my search results

@CHANGE-2590
Scenario: I search change.org site for content from the navagation bar and it returns a search result
  When I search for content on change.org from the navigation bar
  Then I should see my search results

@CHANGE-2590
Scenario: I search change.org site for content that does not exist and it should return no search result
  When I search for content on change.org that does not exist
  Then I should see no search results

@CHANGE-2590
Scenario: I search change.org site for content in French and it returns a search result
  When I search for content on change.org using the side search in French
  Then I should see my search results
